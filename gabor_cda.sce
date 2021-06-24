/* ########################## SPCN GABOR EXPERIMENT  ############################ */
/* ############################################################################## */

/*

Filippo Gambarota, University of Padova

Experiment credits: .@Maya and templates provided by 
https://www.aesthetics.mpg.de/services/progress/presentation.html

*/

### GENERAL EXPERIMENT SETTINGS

/* MAYA Experiment code for triggering */

#write_codes = true; #sending triggers to the port (I think)
#pulse_width = 12; #connected to the port setting

/* This is sufficient for sending triggers when the response is correct */

#button_codes = 222, 223, 99; #appears when incorrect 
#target_button_codes = 242, 243, 99; # appears when correct

response_matching = simple_matching;

/* Screen setup */

default_font_size = 46;
default_font = "arial";
default_background_color = 127, 127, 127; # grey color
default_text_color = 255,255,255; # text to black default

#default_text_color=0,0,0; Maya version
#default_background_color =180,180,180; # Maya version

/* Response setup */

active_buttons = 7; # the number is the number of activated input buttons (i.e. keys)
button_codes = 11, 12, 13, 14, 20, 29, 99; # these are codes for triggers associated with each button

### STARTING SDL

begin;

/* Text and Arrow objects */

text {
	caption = "+";
} TXT_fix_cross;

text {
	caption = "Welcome to this experiment! It will be very funny!!! :) \n 
					Press the spacebar when you want to start!";
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

/* Images objects */

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

/* Pictures */

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

/* Trials objects */

#start recording trial

trial { #start recording trial - send a code to make biosemi start recode (254)
	stimulus_event {
		picture {
		text {caption = " ";}; x = 0; y = 0;
		};
		deltat=200;
		duration=50;
		};
	stimulus_event {
		picture {
		text {caption = " ";}; x = 0; y = 0;
		};
		deltat=50;
		duration=200;
		port_code = 254; # code for triggering the registration start
		}start_recording;
	stimulus_event {
		picture {
		text {caption = " ";}; x = 0; y = 0;
		};
		deltat=200;
		duration=50;
	};
}T_start_recording; #there is no need for a stop recording code, you just stop biosemy

trial {
	trial_duration = forever;
	trial_type = specific_response;    	# trial ends when response
   terminator_button = 7; # ends only with space

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
		#time = 0;
		deltat = 0;
		duration = 29; # ~33ms - ifi/2
	} E_gabor;
	
	stimulus_event {
		picture P_mask;
		code = "backward_mask";
		deltat = 29;
		duration = 346; # ~350ms - ifi/2
	} E_mask;
	
} T_target_mask;

trial {
	trial_duration = 1250;
	stimulus_event {
		picture P_fixation;
		code = "retention_interval";
	} E_retention;
} T_retention;

trial {
	trial_duration = forever; # stay forever until response
	trial_type = specific_response;    	# trial ends when response
   terminator_button = 5,6;
	
	stimulus_event {
		picture P_probe;
		code = "probe";
		response_active = true; # this is a target response active event
	} E_probe;
} T_probe;

trial {
	trial_duration = forever; # stay forever until response
	trial_type = specific_response;    	# trial ends when response
   terminator_button = 1,2,3,4;

	stimulus_event {
		picture P_pas;
		response_active = true; # this is a non-target response active event
		code = "pas";
	} E_pas;
} T_pas;


### STARTING PCL

begin_pcl;

/* User Prompt */

preset int Participant;
preset string Gender;
preset int Age;

/* Creating Output File */

output_file outfile = new output_file;
outfile.open("s" + string(Participant) + ".txt"); 
outfile.print("subject\ age\ gender\ cue\ oris\ trial_type\ change\ target_type\ hit\ incorrect" + "\n");   # this create a space separated header

/* Importing functions */

include "utils.pcl" # this import utility functions

/* Conditions file */

string cond_file = "make_cond/exp_cond.txt"; # the condition file
int ncond = 7; # number of conditions (columns), this is required for reading the file

int ntrials = get_trial_number(cond_file, ncond); # this read the file and return the trials number

# Multimensional array for trials TRIALS[trial)[condition] e.g TRIALS[1][CUE] tells if
# for the trial 1 the cue is left or right

array<string> TRIALS[ntrials][ncond] = get_trial_2Darray(cond_file, ncond, ntrials);

# This are the indexing for the columns of the TRIALS object. TRIALS[1][1] is equivalent to
# TRIALS[1][CUE] when CUE = 1. This is only for convenience (thanks to @nbs youtube videos)

int CUE = 1; # cue direction "left" or "right"
int ORIS = 2; # orientations (are indexes for the amount of available orientations, for the array of images)
int TRIAL_TYPE = 3; # trial type "catch" or "valid"
int CHANGE = 4; # if the probe gabor is the same or different
int CUE_TRIGGER = 5; # which cue trigger
int TARGET_TRIGGER = 6; # which target trigger

/* General variables for the experiment */

int n_ori = gabor_images.count(); # number of orientations
int pause_trial = 5; # number of trials for the pause
int acc = 0;
int PROBE_TRIGGER = 200; # this is the general code for the probe trigger

/* Response Keys Settings */

int pas1_key = 1;
int pas2_key = 2;
int pas3_key = 3;
int pas4_key = 4;
int change_key = 5;
int nochange_key = 6;
int continue_key = 7;

/* Trials setup */

/* # Previous approach
array <int> TRIALS_ORDER[ntrials] = generate_trial_id(ntrials); # this generate an array from 1 to ntrials
TRIALS_ORDER.shuffle(); # this shuffle the array in order to have a random index fot TRIALS[TRIAL_ID[i]][]
*/


##############################################################################################################
##############################################################################################################
##############################################################################################################

### STARTING THE EXPERIMENT


/* Trials Randomization */

# The idea is to have the full array, shuffle it and select row by row in order
# given that is already randomized

TRIALS.shuffle(); # This randomize the order of the array

/* Welcome screen */

P_message.set_part(1, TXT_welcome); # welcome message that use the txt object and the empty message picture

T_message.present();

/* Start Recording */

T_start_recording.present();

/* Experiment loop */

loop int trial_count = 1 until trial_count > TRIALS.count() 
begin;

	array <string> TRIAL_i[ncond] = TRIALS[trial_count]; # get the current trial as array
	
	/* Setting TRIGGERS */
	
	# These are triggers that can be set before. Responses are set later
	
	E_fixation.set_port_code(1); # random! to review
	E_cue.set_port_code(int(TRIAL_i[CUE_TRIGGER]));
	E_gabor.set_port_code(int(TRIAL_i[TARGET_TRIGGER]));
	#E_probe.set_port_code(int(TRIAL_i[PROBE_TRIGGER]));
	
	/* Setting CUE */
	
	if (TRIAL_i[CUE] == "left") then
		# setting the cue direction
		P_cue.set_part(2, cue_left); 
		P_cue.set_part(3, cue_left);
	else
		# setting the cue direction
		P_cue.set_part(2, cue_right);
		P_cue.set_part(3, cue_right);
	end;
	
	/* TARGET, MASK and PROBE */
	
	if (TRIAL_i[TRIAL_TYPE] == "valid") then /* Check if the trial is VALID */
		int trial_ori = int(TRIAL_i[ORIS]); # select the image (orientation) for that trial
		
		P_gabor.set_part(1, gabor_images[trial_ori]); # set the image (right)
		P_gabor.set_part(2, gabor_images[trial_ori]); # set the image (left)
		
		if (TRIAL_i[CHANGE] == "yes") then /* Check if PROBE CHANGE */
			int probe_ori = generate_different_ori(1, n_ori, trial_ori); # generate a random id that is not the same as the $trial_ori
			P_probe.set_part(1, gabor_images[probe_ori]); # set the gabor
			E_probe.set_target_button(change_key); # this set the correct answer and key for that trial
			E_probe.set_port_code(PROBE_TRIGGER + probe_ori); 
		else
			int probe_ori = trial_ori;
			E_probe.set_target_button(nochange_key); # this set the correct answer and key for that trial
			P_probe.set_part(1, gabor_images[probe_ori]); # set the gabor
			E_probe.set_port_code(PROBE_TRIGGER + probe_ori); # this set the correct answer and key for that trial
		end;
		
	else
		P_gabor.set_part(1, mask_image); # set the image (right)
		P_gabor.set_part(2, mask_image); # set the image (left)
		int probe_ori = random(1,n_ori);
		P_probe.set_part(1, gabor_images[probe_ori]);
	end;
	
	### Actual TRIALS presentation
	
	/* Check if PAUSE */
	
	if (mod(trial_count, pause_trial) == 0) then
		P_message.set_part(1, TXT_pause); # pause message
		T_message.present();
	end;
	
	### TRIALS
	
	T_fixation.present();
	T_cue.present();
	T_target_mask.present();
	T_retention.present();
	T_probe.present();
		
	/* Collecting Response */
	
	stimulus_data probe_event = stimulus_manager.last_stimulus_data();
	int probe_reaction_time = probe_event.reaction_time();
	int target_type = probe_event.type();
	int hit = probe_event.HIT;
	int incorrect = probe_event.INCORRECT;
	
	T_pas.present();
	
	/* Saving Data */
	
	outfile.print("subject\ age\ gender\ cue\ oris\ trial_type\ change\ target_type\ hit\ incorrect" + "\n");   # this create a space separated header

	outfile.print(string(Participant) + " " + string(Age) + " " + Gender + " " + TRIAL_i[CUE] + " " + TRIAL_i[ORIS] + " " + TRIAL_i[TRIAL_TYPE] + " " + TRIAL_i[CHANGE] + 
					  " " + string(target_type) + " " + string(hit) + string(incorrect) + " " + "\n");
		
	/* Trial counter */
	trial_count = trial_count + 1;
	
end;