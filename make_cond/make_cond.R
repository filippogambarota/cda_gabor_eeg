# Packages

library(tidyverse)

# Generate Conditions

cue <- c("left", "right")
target_orientation <- 1:11 # all orientations
change <- c("yes", "no")
ntrials <- 1
ncatch <- 10 # need to be a multiple of 2 number

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
    trial = 1:(ncatch/2) # for having the exact number of catch
)

exp_trials <- rbind(valid_trials, catch_trials)

# Test for triggers

exp_trials %>% 
    write.table(., file = "exp_cond.txt",
                sep = ",", # separator
                eol = ",", # for having all in a single line sep
                col.names = FALSE, 
                row.names = FALSE, 
                fileEncoding = "UTF8", 
                quote = FALSE) # for presentation string

# This write the colnames string

colnames(exp_trials) %>% 
    cat(., file = "cond_names.txt", sep = ",")