# Test Reading file

begin;
begin_pcl;

include "utils.pcl" # utility functions
string cond_file = "make_cond/exp_cond.txt"; # the condition file
int ncond = 4; # number of conditions (columns)
int pause_trial = 5;
int ntrials = get_trial_number(cond_file, ncond); # this read the file and return the trials number

array<string> TRIALS[ntrials][ncond] = get_trial_array(cond_file, ncond, ntrials);
TRIALS.shuffle();

loop int i = 1 until i > ntrials
begin
	term.print(TRIALS[i]);
	term.print("\n");
	i = i + 1;
end;