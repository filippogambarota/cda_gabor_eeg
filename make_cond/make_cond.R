# Packages

library(dplyr)
library(tidyr)

change <- c("yes", "no")
cue <- c("left", "right") 
norientations <- 6
which_change <- c("clock", "anti")
nrep <- 1
ncatch <- 10 # multiple of 2

valid <- tidyr::expand_grid(cue, 
                            target = 1:norientations, 
                            trial_type = "valid",
                            change,
                            rep = 1:nrep,
                            which_change)

catch <- tidyr::expand_grid(cue,
                            target = 0,
                            trial_type = "catch",
                            change = "0", 
                            rep = 1:(ncatch/2),
                            which_change = "0")

experiment <- bind_rows(valid, catch) %>% 
    select(-rep) %>% 
    mutate(probe = case_when(
        which_change == "anti" & target > 1 ~ target - 1,
        which_change == "anti" & target == 1 ~ norientations,
        which_change == "clock" & target < norientations ~ target + 1,
        which_change == "clock" & target == norientations ~ 1,
        TRUE ~ 0))

experiment %>% 
    write.table(., file = "exp_cond.txt",
                sep = ",", # separator
                eol = ",", # for having all in a single line sep
                col.names = FALSE, 
                row.names = FALSE, 
                fileEncoding = "UTF8", 
                quote = FALSE) # for presentation string

# This write the colnames string

colnames(experiment) %>% 
    cat(., file = "cond_names.txt", sep = ",")