####### EXPERIMENT GENERAL SETTINGS #########

default_background_color = 127, 127, 127; # grey color
default_text_color = 255,255,255; # text to black default

active_buttons = 2; # the number is the number of activated input buttons (i.e. keys)

begin;

####### SDL #########

# General Objects

text {
	caption = "+";
} TXT_fix_cross;

text {
	caption = "Welcome to this experiment! It will be very funny!!! :) \n Press the spacebar when you want to start!";
} TXT_welcome;

text {
	caption = "You can take a pause! \n press the spacebar to continue!";
} TXT_pause;

text {
	caption = "Thank you for your participation! \n Have a nice day :)";
} TXT_end;

arrow_graphic {
      coordinates = 100, 0, -100, 0;
      line_width = 20;
      head_width = 100;
      head_length = 50;
   } cue_left;

arrow_graphic {
      coordinates = -100, 0, 100, 0;
      line_width = 20;
      head_width = 100;
      head_length = 50;
   } cue_right;

array {
	bitmap { filename = "final/gabor_135.tiff";};
	bitmap { filename = "final/gabor_150.tiff";};
	bitmap { filename = "final/gabor_165.tiff";};
	bitmap { filename = "final/gabor_180.tiff";};
	bitmap { filename = "final/gabor_195.tiff";};
	bitmap { filename = "final/gabor_210.tiff";};
	bitmap { filename = "final/gabor_225.tiff";};
} gabor_images;

bitmap { filename = "final/mask.tiff"; } mask_image;

text {caption = "PAS QUESTION HERE";} TXT_pas;

# Picture Definition

picture {
	# generic text for messages
	box { height = 1; width = 1; color = 0,0,0;};
	x = 0; y = 0;
} P_message;

picture {
	text TXT_fix_cross;
	x = 0; y = 0;
} P_fixation;

picture {
		text TXT_fix_cross;
		x = 0; y = 0;
      box { height = 1; width = 1; color = 0,0,0; };
      x = 0; y = 100;
		box { height = 1; width = 1; color = 0,0,0; };
		x = 0; y = -100;
} P_cue;

picture {  
      # placeholder - set by PCL
      box { height = 1; width = 1; color = 0,0,0; };
      x = 200; y = 0;
		box { height = 1; width = 1; color = 0,0,0; };
      x = -200; y = 0;

} P_gabor;

picture {
	bitmap mask_image;
	x = 200; y = 0; # right side mask
	bitmap mask_image;
	x = -200; y = 0; # left side mask
} P_mask;

picture {
	# Empty image for PCL
	box { height = 1; width = 1; color = 0,0,0; };
	x = 0; y = 0;
} P_probe;

picture {
	text TXT_pas;
	x = 0; y = 0;
} P_pas;

# TRIAL DEFINITION

trial {
	trial_duration = forever;
	trial_type = first_response; # this ends the trial after the first response
	picture P_message;
} T_message;

trial {
	trial_duration = 496; # ~500 - ifi/2
	
	stimulus_event {
		picture P_fixation;
		code = "fixation";
	} E_fixation;
	
} T_fixation;


trial {
	trial_duration = 496; # ~500 - ifi/2
	
	stimulus_event {
		picture P_cue;
		code = "cue";
	} E_cue;
	
} T_cue;

trial {
	stimulus_event {
		picture P_gabor;
		code = "gabor";
		time = 0;
		duration = 29; # ~33ms - ifi/2
	} E_gabor;
	
	stimulus_event {
		picture P_mask;
		code = "backward_mask";
		time = 29; # check this
		duration = 346; # ~350ms - ifi/2
	} E_mask;
	
} T_backward_mask;

trial {
	trial_duration = 1250;
	stimulus_event {
		picture P_fixation;
		code = "retention_interval";
	} E_retention;
} T_retention;

trial {
	trial_duration = forever; # stay forever until response
	trial_type = first_response; # this ends the trial after the first response
	
	stimulus_event {
		picture P_probe;
		code = "probe";
		response_active = true;
	} E_probe;
} T_probe;

trial {
	trial_duration = forever; # stay forever until response
	trial_type = first_response; # this ends the trial after the first response
	
	stimulus_event {
		picture P_pas;
		response_active = true;
		code = "pas";
	} E_pas;
} T_pas;

####### PCL #########

begin_pcl;

include "utils.pcl" # utility functions
string cond_file = "make_cond/exp_cond.txt"; # the condition file
int ntrials = 128; # number of trials
int ncond = 4; # number of conditions (columns)
int n_ori = gabor_images.count();
int pause_trial = 5;

array<string> TRIALS[ncond][ntrials] = get_trial_array(cond_file, ncond, ntrials);

int CUE = 1;
int ORIS = 2;
int TRIAL_TYPE = 3;
int CHANGE = 4;

array <int> TRIAL_ID[ntrials] = generate_trial_id(ntrials);
TRIAL_ID.shuffle(); # shuffling trial presentation

################ EXPERIMENT ##################

P_message.set_part(1, TXT_welcome); # welcome message
T_message.present();

loop int trial_i = 1 until trial_i > ntrials
begin;
	# Get the current trial
	int curr_trial = TRIAL_ID[trial_i];
	
	# Setting cue
	
	if (TRIALS[CUE][curr_trial] == "left") then
		# setting the cue direction
		P_cue.set_part(2, cue_left); 
		P_cue.set_part(3, cue_left);
	else
		# setting the cue direction
		P_cue.set_part(2, cue_right);
		P_cue.set_part(3, cue_right);
	end;
	
	# Gabor and Probe (double conditional valid/non valid e change non change)
	
	if (TRIALS[TRIAL_TYPE][curr_trial] == "valid") then
		int trial_ori = int(TRIALS[ORIS][curr_trial]); # select the image (orientation) for that trial
		P_gabor.set_part(1, gabor_images[trial_ori]); # set the image (right)
		P_gabor.set_part(2, gabor_images[trial_ori]); # set the image (left)
		
		if (TRIALS[CHANGE][curr_trial] == "yes") then
			int probe_ori = generate_probe_ori(1, n_ori, trial_ori); # generate a random id that is not the same as the $trial_ori
			P_probe.set_part(1, gabor_images[probe_ori]); # set the gabor
		else
			int probe_ori = trial_ori;
			P_probe.set_part(1, gabor_images[probe_ori]); # set the gabor
		end;
		
	else
		P_gabor.set_part(1, mask_image); # set the image (right)
		P_gabor.set_part(2, mask_image); # set the image (left)
		int probe_ori = random(1,n_ori);
		P_probe.set_part(1, gabor_images[probe_ori]);
	end;
	
	################# RUNNING TRIALS #########################
	
	if (mod(trial_i, pause_trial) == 0) then
		P_message.set_part(1, TXT_pause); # pause message
		T_message.present();
	end;
	
	T_fixation.present();
	T_cue.present();
	T_backward_mask.present();
	T_retention.present();
	T_probe.present();
	T_pas.present();
	
	# maybe a random jittering
	
	trial_i = trial_i + 1; # counter
	
end;