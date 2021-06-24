# Packages

library(tidyverse)

# Generate Conditions

cue <- c("left", "right")
target_orientation <- c(1, 2, 3, 4, 5, 6, 7)
change <- c("yes", "no")
ntrials <- 1

valid_trials <- expand_grid(
    cue,
    target_orientation,
    trial_type = "valid",
    change,
    trial = 1:ntrials
)

catch_trials <- expand_grid(
    cue,
    target_orientation = 0,
    trial_type = "catch",
    change = 0,
    trial = 1:10
)

exp_trials <- rbind(valid_trials, catch_trials)
exp_trials$trial <- 1:nrow(exp_trials)
exp_trials <- select(exp_trials, -trial)

# Test for triggers

exp_trials %>% 

    # TRIGGERS MUTATE

    mutate(cue_trigger = ifelse(cue == "left", 50, 59),
           target_trigger = ifelse(trial_type == "valid",
                                   100 + target_orientation,
                                   199)) -> exp_trials

exp_trials %>% 
    write.table(., file = "exp_cond.txt",
                sep = ",", # separator
                eol = ",", # for having all in a single line sep
                col.names = FALSE, 
                row.names = FALSE, 
                fileEncoding = "UTF8", 
                quote = FALSE) # for presentation string
