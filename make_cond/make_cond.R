# Packages

library(tidyverse)

# Generate Conditions

cue <- c("left", "right")
orientations <- c(1, 2, 3, 4, 5, 6, 7)
change <- c("yes", "no")
ntrials <- 1

valid_trials <- expand_grid(
    cue,
    orientations,
    trial_type = 1,
    change,
    trial = 1:ntrials
)

catch_trials <- expand_grid(
    cue,
    orientations = 0,
    trial_type = 0,
    change = 0,
    trial = 1:50
)

exp_trials <- rbind(valid_trials, catch_trials)

exp_trials %>% 
    select(-trial) %>% 
    write.table(., file = "exp_cond.txt", sep = "\n", col.names = FALSE, row.names = FALSE, fileEncoding = "UTF8", quote = FALSE)


dur = c(500, 500, 33, 350, 1250, 2000, 2000)
cumsum(dur) - 4


