/* ########################## SPCN GABOR EXPERIMENT  ############################ */
/* ############################################################################## */

/*

Filippo Gambarota, University of Padova

Experiment credits: 

@Maya
@templates provided by https://www.aesthetics.mpg.de/services/progress/presentation.html

/* ############################################################################## */

write_codes = true; # sending triggers to the port
pulse_width = 12;
response_logging = log_active;
response_matching = simple_matching;

/* Screen setup */

default_font_size = 46;
default_font = "arial";
default_background_color = 128, 128, 128; # grey color
default_text_color = 255,255,255; # text to black default

/* Response setup */

active_buttons = 8; # the number is the number of activated input buttons (i.e. keys)
button_codes = 151, 152, 153, 154, 140, 145, 99, 250; # these are codes for triggers associated with each button

/* STARTING SDL ################################################################## */

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
	caption = "This is the practice!";
} TXT_practice;

text {
	caption = "Now the experiment start";
} TXT_experiment;

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

# this loop create the mock images array for the pcl part

$ngabors = 11;

array {
   LOOP $i $ngabors;
   $k = '$i + 1';
   bitmap { filename = ""; preload = false;};
   ENDLOOP;
} gabor_images;

# this loop create the mock images array for the pcl part for the det task

$ndet = 11;

array {
   LOOP $i $ndet;
   $k = '$i + 1';
   bitmap { filename = ""; preload = false;};
   ENDLOOP;
} det_images;

bitmap { filename = "mask.tiff"; } mask_image;

text {caption = "PAS QUESTION HERE";} TXT_pas;

/* Pictures */

picture {
	# generic text for messages
	box { height = 1; width = 1; color = 0,0,0;};
	x = 0; y = 0;
} P_message;

picture {
	text {caption = "";};
	x = 0; y = 0;
} P_blank;

picture {
	text TXT_fix_cross;
	x = 0; y = 0;
} P_fixation;

picture {
	#text {caption = "";};
	text TXT_fix_cross;
	x = 0; y = 0;
} P_jitter_empty;

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

# This is the picture with the cursor and the response options

picture{
	text {
		caption = "+";
		font_color = 0,0,0;
		transparent_color = 128, 128, 128;
	} cursor;
	x = 0; y = 0;
	on_top = true;
} P_det;

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
	stimulus_event{
		picture P_message;
		response_active = true;
	} E_message;
} T_message;

### TODO fix the 1 trigger after fixation

trial {	
	stimulus_event {
		picture P_fixation;
		code = "fixation";
		deltat= 0;
		duration = 496; # ~ 500ms - ifi/2
	} E_fixation;
	
	stimulus_event {
		picture P_cue;
		code = "cue";
		deltat = 496; # ~ 500ms - ifi/2
		duration = 496; # ~ 500ms - ifi/2
	} E_cue;
	
	stimulus_event{
		picture P_jitter_empty;
		code = "fix_jitter";
		deltat = 496; # ~ 500ms - ifi/2
		duration = 496; # ~ 500ms - ifi/2
	} E_jitter;
	
	stimulus_event {
		picture P_gabor;
		code = "gabor";
		deltat = 496;
		duration = 29; # ~33ms - ifi/2
	} E_gabor;
	
	stimulus_event {
		picture P_mask;
		code = "backward_mask";
		deltat = 29; # ~33ms - ifi/2
		duration = 346; # ~350ms - ifi/2
	} E_mask;
	
	stimulus_event {
		picture P_fixation;
		code = "retention_interval";
		deltat = 346;
		duration = 1246; # `1250 - ifi/2
	} E_retention;
} T_main;

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

# This is the trial for the det response

trial {
	stimulus_event{
		picture P_det;
		response_active = false;
	} E_det;
} T_det;

trial {
	trial_duration = 1000;
	stimulus_event{
		picture P_blank;
	} E_iti;
} T_iti;

/* STARTING PCL ################################################################## */

begin_pcl;

/* Manual Port Setup */

# This set up a port for sending a manual trigger for the DET task 

if (output_port_manager.port_count() == 0) then
   term.print( "Forgot to add an output port!" )
end;
output_port manual_port = output_port_manager.get_port( 1 );
manual_port.set_pulse_width(12);

/* Mouse Setup */

mouse mse = response_manager.get_mouse( 1 );
int max_x = display_device.width() / 2;
int min_x = -max_x;
int max_y = display_device.height() / 2;
int min_y = -max_y;
mse.set_min_max( 1, min_x, max_x );
mse.set_min_max( 2, min_y, max_y );
mse.set_restricted( 1, true );
mse.set_restricted( 2, true );

/* User Prompt */

preset int Participant;
preset string Gender;
preset int Age;

/* Creating Output File */

output_file outfile = new output_file;
outfile.open("s" + string(Participant) + ".txt"); 
outfile.print("subject\ age\ gender\ cue\ oris\ trial_ori_image\ trial_type\ probe_ori\ change \ probe_acc\ probe_rt\ probe_resp\ pas_resp\ pas_rt\ det_resp\ det_image\ det_rt\ det_acc" + "\n");   # this create a space separated header

/* Importing functions */

include "utils.pcl" # this import utility functions

/* Conditions file */

string cond_file = "make_cond/exp_cond.txt"; # the condition file
string cond_names_file = ("make_cond/cond_names.txt");
string out_exp_trials = ("exp_order/" + "s" + string(Participant) + "_exp_order.txt");

int ncond = get_cond_number(cond_names_file); # get the number of columns
int ntrials = get_trial_number(cond_file, ncond); # this read the file and return the trials number
array <string> cond_names[ncond] = get_cond_names(cond_names_file); # array with conditions names

# Multimensional array for trials TRIALS[trial)[condition] e.g TRIALS[1][CUE] tells if
# for the trial 1 the cue is left or right

array<string> TRIALS[ntrials][ncond] = get_trial_2Darray(cond_file, ncond, ntrials);

# This are the indexing for the columns of the TRIALS object. TRIALS[1][1] is equivalent to
# TRIALS[1][CUE] when CUE = 1. This is only for convenience (thanks to @nbs youtube videos)

/* Importing and Loading Images */

string subject_images_path = "S" + string(Participant) + "/"; # the current participant
string det_path = "det_stimuli" + "/"; # the general folder for gabors

# Array with images. The order is also for the DET response

array <string> IMAGE_NAMES_TARGET[gabor_images.count()] = {
	"gabor_15.tiff", "gabor_45.tiff", "gabor_75.tiff", "gabor_105.tiff", "gabor_135.tiff", "gabor_165.tiff"
};

### TODO Check how to automatize this

array <string> IMAGE_NAMES_DET[gabor_images.count()] = {
	"gabor_0.tiff", "gabor_5.tiff", "gabor_10.tiff", "gabor_15.tiff", "gabor_20.tiff", 
	"gabor_25.tiff", "gabor_30.tiff", "gabor_35.tiff", "gabor_40.tiff", "gabor_45.tiff",
	"gabor_50.tiff", "gabor_55.tiff", "gabor_60.tiff", "gabor_65.tiff", "gabor_70.tiff",
	"gabor_75.tiff", "gabor_80.tiff", "gabor_85.tiff", "gabor_95.tiff", "gabor_100.tiff",
	"gabor_105.tiff", "gabor_110.tiff", "gabor_115.tiff", "gabor_120.tiff", "gabor_125.tiff",
	"gabor_130.tiff", "gabor_135.tiff", "gabor_140.tiff", "gabor_145.tiff", "gabor_150.tiff",
	"gabor_155.tiff", "gabor_160.tiff", "gabor_165.tiff", "gabor_170.tiff", "gabor_175.tiff"
};

array <int> IMAGE_INDEX_TARGET[gabor_images.count()] = {
	4, 10, 16, 21, 27, 33
};

array <int> IMAGE_INDEX_DET[det_images.count()] = {
	18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 
	1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17
}

# This read and load the images using the path and the IMAGE_NAMES array

int resize_im_factor = 1;

loop int i = 1 until i > gabor_images.count()
begin
	gabor_images[i].set_filename(subject_images_path + IMAGE_NAMES[i]);
	gabor_images[i].set_load_size(0,0,resize_im_factor); # resize images. if 1 the size is the same as the file
	gabor_images[i].load();
	i = i + 1;
end;

# This read and load the images using the path and the IMAGE_NAMES array for the det task

int resize_det_factor = 1;

### TODO check if the indexing works

loop int i = 1 until i > det_images.count()
begin
	det_images[IMAGE_INDEX_DET[i]].set_filename(det_path + IMAGE_NAMES[i]);
	det_images[IMAGE_INDEX_DET[i]].set_load_size(0,0,resize_det_factor); # resize images. if 1 the size is the same as the file
	det_images[IMAGE_INDEX_DET[i]].load();
	i = i + 1;
end;

/* Index for trials array */

int CUE = 1; # cue direction "left" or "right"
int ORIS = 2; # orientations (are indexes for the amount of available orientations, for the array of images)
int TRIAL_TYPE = 3; # trial type "catch" or "valid"
int CHANGE = 4; # if the probe gabor is the same or different
int WHICH_CHANGE = 5; # clock or anticlockwise rotation
int PROBE = 6; # which target trigger

/* General variables for the experiment */

# Triggers value 

int TRIAL_NUMBER_TRIGGER = 0; # create and then update within the script
int FIX_TRIGGER = 0; # the fixation index also the trial number within a block
int LEFT_CUE_TRIGGER = 102;
int RIGHT_CUE_TRIGGER = 103;
int JITTER_TRIGGER = 104;
int TARGET_TRIGGER = 100; # this is the general code for the probe trigger
int CATCH_TRIGGER = 198;
int MASK_TRIGGER = 199;
int RETENTION_TRIGGER = 200; # 200 + block number
int PROBE_TRIGGER = 130;
int DET_CORRECT_TRIGGER = 160; # code for the correct response
int DET_WRONG_TRIGGER = 180; # code for the wrong response

# Other variables
int n_ori = gabor_images.count(); # number of orientations
int pause_trial = 4; # number of trials for the pause
array <int> empty_target_button[0]; # this is for setting no target buttons
int probe_ori = 999;
array <int> fix_jittered_dur[4] = {350, 400, 450, 500}; # jittered time for fixation

/* DET setup */

# DET gabor size

int tgt_height = 154; # the image height
int tgt_width = 154; # the image width

# DET gabors array with positions

array <int> tgt_pos[n_ori][2] = {
	# anticlockwise
	
	{-776, 35}, # 1
	{-770, 104}, # 1
	{-758, 173}, # 1
	{-739, 240}, # 1
	{-714, 305}, # 1
	{-684, 368}, # 1
	{-648, 428}, # 1
	{-607, 484}, # 1
	{-562, 537}, # 1
	{-511, 585}, # 1
	{-457, 629}, # 1
	{-399, 667}, # 1
	{-337, 700}, # 1
	{-273, 727}, # 1
	{-207, 749}, # 1
	{-139, 765}, # 1
	{-70, 774}, # 1
	{0, 777}, # 1
	{70, 774}, # 1
	{139, 765}, # 1
	{207, 749}, # 1
	{273, 727}, # 1
	{337, 700}, # 1
	{399, 667}, # 1
	{457, 629}, # 1
	{511, 585}, # 1
	{562, 537}, # 1
	{607, 484}, # 1
	{648, 428}, # 1
	{683, 368}, # 1
	{714, 305}, # 1
	{739, 240}, # 1
	{758, 173}, # 1
	{770, 104}, # 1
	{776, 35}, # 1
	
	
};

# Setting coordinates for the picture objects according to the tgt pos array
# and setting the full contrast gabors

int shift_y = 400; # vertical shift

loop int i = 1 until i > gabor_images.count()
begin
	tgt_pos[i][2] = tgt_pos[i][2] - shift_y; # we need also to modify the tgt_pos array for the mouse response
	P_det.add_part(gabor_images[i], tgt_pos[i][1], tgt_pos[i][2]); # set all images and coordinates
	i = i + 1;
end;

/* Response Keys Settings */

array <string> resp_array[8] = {"pas1", "pas2", "pas3", "pas4", 
										  "change", "nochange", 
										  "continue", "mouse"};

int pas1_key = 1;
int pas2_key = 2;
int pas3_key = 3;
int pas4_key = 4;
int change_key = 5;
int nochange_key = 6;
int continue_key = 7;
int mouse_key = 8;

/* SUBROUTINES */

# Check if the pressed stimulus is a target https://www.neurobs.com/menu_support/menu_forums/view_thread?id=10296

sub
    bool on_target( int tgt_x, int tgt_y )
begin
    mse.poll();
    double curr_x = mse.x_position();
    double curr_y = mse.y_position();
    
    if ( curr_x >= tgt_x - ( tgt_width * 0.5 ) ) && ( curr_x <= tgt_x + ( tgt_width * 0.5 ) ) &&
        ( curr_y >= tgt_y - ( tgt_height * 0.5 ) ) && ( curr_y <= tgt_y + ( tgt_height * 0.5 ) ) then
        return true
    end;
    return false
end;

# using the on_target() method iterating across all targets within array and
# get the pressed stimulus index

sub
	int which_target
begin
	int idx_target = 0;
	bool target_found = false;
	loop int i = 1 until i > tgt_pos.count() || target_found
	begin
		target_found = on_target(tgt_pos[i][1], tgt_pos[i][2]);
		idx_target = i;
		i = i + 1;
	end;
	
	if !target_found then
		idx_target = 0;
	end;
	return idx_target;
end;

# display the DET trial and collect response

sub 
	int det_task
	begin
		int ii = 0;
		loop
			int idx = 0
		until
		 idx != 0
		begin
		 # Update cursor position and present picture until a response is made
			loop int resp_ct = response_manager.total_response_count( mouse_key )
			until response_manager.total_response_count( mouse_key ) > resp_ct
			begin
			  mse.poll();
			  P_det.set_part_x( 1, mse.x_position() );
			  P_det.set_part_y( 1, mse.y_position() );
			  T_det.present();
			end;
			# Now that a response is made, check if it's on target
			# We pass the target's x/y location to the subroutine
			idx = which_target();
			ii = idx;
		end;
	return ii;
end;

## Experiment sub routine

sub
run_experiment(string type, int tot_trials)
begin
	
	/* Experiment loop */

	int trial_count_block = 1; # counter for trials within the block
	int nblock = 1; # counter for the number of blocks
	int exp_trials = TRIALS.count();
	
	/* Setup Practice */
	
	if type == "practice" then
		nblock = 0;
		exp_trials = tot_trials;
	end;
	
	loop int trial_count = 1 until trial_count > exp_trials 
	begin;

		array <string> TRIAL_i[ncond] = TRIALS[trial_count]; # get the current trial as array
		
		/* Setting TRIGGERS */
		
		# These are triggers that can be set before. Responses are set later
		FIX_TRIGGER = trial_count_block; # the fixation index the trial count within the block
		E_fixation.set_port_code(FIX_TRIGGER);
		
		/* Setting CUE and Jitter */
		# the cue trigger is sent with the jittering and vice-versa
		
		int jitter_i = random(1, fix_jittered_dur.count()); # random jittering
		E_cue.set_port_code(JITTER_TRIGGER + jitter_i); # send trigger
		
		if (TRIAL_i[CUE] == "left") then
			E_jitter.set_port_code(LEFT_CUE_TRIGGER);
			P_cue.set_part(2, cue_left); 
			P_cue.set_part(3, cue_left);
		else
			E_jitter.set_port_code(RIGHT_CUE_TRIGGER);
			P_cue.set_part(2, cue_right);
			P_cue.set_part(3, cue_right);
		end;
		
		/* Setting Jittered Duration */
		
		E_jitter.set_duration(fix_jittered_dur[jitter_i] - 4); # @slack approach
		E_gabor.set_deltat(fix_jittered_dur[jitter_i] - 4); # @slack approach, change the deltat because has changed also for the jittering
		
		/* TARGET, MASK RETENTION and PROBE */
		
		E_retention.set_port_code(RETENTION_TRIGGER + nblock); # setting the retention interval trigger + nblock
		
		if (TRIAL_i[TRIAL_TYPE] == "valid") then /* Check if the trial is VALID */
			int trial_ori = int(TRIAL_i[ORIS]); # select the image (orientation) for that trial
			E_gabor.set_port_code(TARGET_TRIGGER + trial_ori);
			P_gabor.set_part(1, gabor_images[trial_ori]); # set the image (right)
			P_gabor.set_part(2, gabor_images[trial_ori]); # set the image (left)
			
			if (TRIAL_i[CHANGE] == "yes") then /* Check if PROBE CHANGE */
				#probe_ori = generate_different_ori(1, n_ori, trial_ori); # generate a random id that is not the same as the $trial_ori
				probe_ori = TRIAL_i[PROBE]
				P_probe.set_part(1, gabor_images[probe_ori]); # set the gabor
				E_probe.set_target_button(change_key); # this set the correct answer and key for that trial
				E_probe.set_port_code(PROBE_TRIGGER + probe_ori); 
			else
				E_probe.set_target_button(nochange_key); # this set the correct answer and key for that trial
				probe_ori = trial_ori; # probe orientation is the same
				P_probe.set_part(1, gabor_images[probe_ori]); # set the gabor
				E_probe.set_port_code(PROBE_TRIGGER + probe_ori); # this set the correct answer and key for that trial
			end;
			
		else
			E_gabor.set_port_code(CATCH_TRIGGER);
			E_gabor.set_response_active(false); # this turns the target (now masks) not as target active
			E_gabor.set_target_button(empty_target_button); # remove target buttons
			P_gabor.set_part(1, mask_image); # set the image (right)
			P_gabor.set_part(2, mask_image); # set the image (left)
			probe_ori = random(1, n_ori);
			P_probe.set_part(1, gabor_images[probe_ori]);
		end;
		
		### Actual TRIALS presentation
		
		/* Check if PAUSE */
		
		if (trial_count_block == pause_trial + 1) then
			trial_count_block = 0; # reset trial counter for blocks
			nblock = nblock + 1; # increase block number
			response_manager.set_port_output(false);
			P_message.set_part(1, TXT_pause); # pause message
			T_message.present();
			response_manager.set_port_output(true);
		end;
		
		### TRIALS
		
		### TODO check if this approach with trials works
		T_main.present();
			
		/* Collecting PROBE Response */
		
		T_probe.present();
		
		stimulus_data probe_event = stimulus_manager.last_stimulus_data();
		
		int probe_acc = get_acc_event(probe_event); # get the accuracy for the event
		string probe_resp = resp_array[probe_event.button()]; # get the change/no change response
		int probe_rt = probe_event.reaction_time(); # get reaction times
		
		/* Collecting PAS Response */
		
		T_pas.present();
		
		stimulus_data pas_event = stimulus_manager.last_stimulus_data();
		int pas_rt = pas_event.reaction_time();
		string pas_resp = resp_array[pas_event.button()]; # get the pas response
		
		/* End PAS Response */
		
		/* Collecting DET Response and RT */
		
		response_manager.set_port_output(false);

		int start_det = clock.time();
		int det_resp = det_task();
		
		int det_rt = response_manager.last_response_data().time() - start_det;
		
		# check det accuracy
		int det_acc = 0;
		int det_resp_code = DET_WRONG_TRIGGER + det_resp; # general trigger for wrong det response + pressed orientation
		
		### TODO check if the indexing works
		
		if IMAGE_INDEX_TARGET[int(TRIAL_i[ORIS])] == det_resp then
			det_acc = 1;
			det_resp_code = DET_CORRECT_TRIGGER + det_resp; # general trigger for wrong det response + pressed orientation (overwrite wrong if correct)
		end;
		
		/* Send Manual Trigger */
		
		manual_port.send_code(det_resp_code); # send manual code for det response

		response_manager.set_port_output(true);
		
		/* ITI */
		
		T_iti.present();
		
		/* Saving Data */
		
		string trial_ori_image = "0"; # preallocate the variable, if correct change the value
		
		if (TRIAL_i[TRIAL_TYPE] == "valid") then
			trial_ori_image = IMAGE_NAMES[int(TRIAL_i[ORIS])];  # get the target image
		end;
		
		string det_image = IMAGE_NAMES[det_resp]; # get the det pressed image
		
		outfile.print(string(Participant) + " " + string(Age) + " " + Gender + " " + TRIAL_i[CUE] + " " + TRIAL_i[ORIS] + " " + trial_ori_image + " " + TRIAL_i[TRIAL_TYPE] + " " + string(probe_ori) + " " + TRIAL_i[CHANGE] + " " + 
							string(probe_acc) + " " + string(probe_rt) + " " + probe_resp + " " + pas_resp + " " + string(pas_rt) + " " + string(det_resp)+ " " + det_image + " " + string(det_rt) + " " + string(det_acc) + "\n");
		
		/* Trial counters */
		trial_count = trial_count + 1;
		trial_count_block = trial_count_block + 1;
	end;
end;

##############################################################################################################
###############################    STARTING THE EXPERIMENT     ###############################################
##############################################################################################################

/* Trials Randomization */

# The idea is to have the full array, shuffle it and select row by row in order
# given that is already randomized

TRIALS.shuffle(); # This randomize the order of the array

/* Saving Experiment Order */

string wri = write_experiment_file(out_exp_trials, cond_names, ntrials, TRIALS);

/* Welcome screen */
P_message.set_part(1, TXT_welcome); # welcome message that use the txt object and the empty message picture
T_message.present();

/* Practice screen */
P_message.set_part(1, TXT_practice); # welcome message that use the txt object and the empty message picture
T_message.present();

/* Practice screen */
P_message.set_part(1, TXT_experiment); # welcome message that use the txt object and the empty message picture
T_message.present();

/* Starting Experiment Screen */

/* Start Recording */
T_start_recording.present();

/* Practice */
run_experiment("practice", 3); # practice with 3 trials

/* Experiment */
run_experiment("experiment", 0); # full experiment 0 = all trials

/* Goodbye */
P_message.set_part(1, TXT_end); # end message
T_message.present();
