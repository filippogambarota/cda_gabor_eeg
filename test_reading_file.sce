# Test Reading file

begin;
begin_pcl;

#include "utils.pcl" # utility functions
string cond_file = "make_cond/exp_cond.txt"; # the condition file
int ncond = 4; # number of conditions (columns)
int pause_trial = 5;

int ntrials = 0;
	input_file condfile = new input_file;
	condfile.open(cond_file);
	condfile.set_delimiter(',');
	loop int i = 1 until condfile.end_of_file()
	begin
		loop int cond = 1 until cond > ncond
		begin
			condfile.get_line();
			cond = cond + 1;
		end;
		ntrials = ntrials + 1;
end;
condfile.close();


#term.print(ntrials);
#array<string> TRIALS[ncond][ntrials] = get_trial_array(cond_file, ncond, ntrials);

int CUE = 1;
int ORIS = 2;
int TRIAL_TYPE = 3;
int CHANGE = 4;