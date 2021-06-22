default_background_color = 127, 127, 127; # grey color

begin;

# Timing parameters

text {caption = "+"; font_color = 255,255,255;} fix_cross;

arrow_graphic {
      coordinates = 100, 0, -100, 0;
      line_width = 20;
      head_width = 100;
      head_length = 50;
   }cue_arrow;

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

text { caption = "Retention"; font_color = 255,255,255; } retention_text;
text { caption = "Probe"; font_color = 255,255,255; } probe_text;
text { caption = "PAS"; font_color = 255,255,255; } pas_text;

picture {
	bitmap mask_image;
	x = 200; y = 0; # right side mask
	bitmap mask_image;
	x = -200; y = 0; # left side mask
} mask;

picture {
	text fix_cross;
	x = 0; y = 0;
}fix;

picture {  
      # placeholder - set by PCL
      box { height = 1; width = 1; color = 0,0,0; };
      x = 200; y = 0;
		box { height = 1; width = 1; color = 0,0,0; };
      x = -200; y = 0;

   } gabor;

picture {
		text fix_cross;
		x = 0; y = 0;
      arrow_graphic cue_arrow;
      x = 0; y = 100;
		arrow_graphic cue_arrow;
		x = 0; y = -100;
}cue;

picture {
	box { height = 1; width = 1; color = 0,0,0; };
	x = 0; y = 0;
}probe;

picture {
	text pas_text;
	x = 0; y = 0;
}pas;

trial {
	#trial_duration = 5000;
	
	picture fix;
	time = 0;
	duration = 496; # ~500 ms - ifi/2 (@slack approach psychtoolbox)
	code = "fix";
	
	picture cue;
	time = 496;
	duration = 496; # ~500 ms - ifi/2 (@slack approach psychtoolbox)
	code = "cue";
	
   picture gabor;
	time = 996;
	duration = 29; # ~33 ms - ifi/2 (@slack approach psychtoolbox)
	code = "gabor";
	
	picture mask;
	time = 1029;
	duration = 346; # ~350 ms - ifi/2 (@slack approach psychtoolbox)
	code = "mask";
	
	picture fix;
	time = 1379;
	duration = 1246; # ~1500 ms - ifi/2 (@slack approach psychtoolbox)
	code = "retention";
	
	stimulus_event{
		picture probe;
		time = 2629;
		duration = 1996; # ~2000 ms - ifi/2 (@slack approach psychtoolbox)
		response_active = true;
		code = "probe";
	} probe_event;
	
	stimulus_event{
		picture pas;
		time = 4629;
		duration = 1996; # ~2000 ms - ifi/2 (@slack approach psychtoolbox),
		response_active = true;
		code = "pas";
	} pas_event;

} main_trial;

begin_pcl;

include "utils.pcl" # utility functions
string cond_file = "make_cond/exp_cond.txt"; # the condition file
int ntrials = 128; # number of trials
int ncond = 4; # number of conditions (columns)
int n_ori = gabor_images.count();

array<string> TRIALS[ncond][ntrials] = get_trial_array(cond_file, ncond, ntrials);

int CUE = 1;
int ORIS = 2;
int TRIAL_TYPE = 3;
int CHANGE = 4;

array <int> TRIAL_ID[ntrials] = generate_trial_id(ntrials);
TRIAL_ID.shuffle(); # shuffling trial presentation

loop int trial_i = 1 until trial_i > ntrials
begin;
	# Get the current trial
	int curr_trial = TRIAL_ID[trial_i];
	
	# Setting cue
	
	if (TRIALS[CUE][curr_trial] == "left") then
		cue_arrow.set_coordinates(-100, 0, 100, 0);
		cue_arrow.redraw();
	else
		cue_arrow.set_coordinates(100, 0, -100, 0);
		cue_arrow.redraw();
	end;
	
	if (TRIALS[TRIAL_TYPE][curr_trial] == "valid") then
		int trial_ori = int(TRIALS[ORIS][curr_trial]); # select the image (orientation) for that trial
	else
		int trial_ori = random(1, n_ori)
	end;
		
	# Gabor and Probe (double conditional valid/non valid e change non change)
	
	if (TRIALS[TRIAL_TYPE][curr_trial] == "valid") then
		int trial_ori = int(TRIALS[ORIS][curr_trial]); # select the image (orientation) for that trial
		gabor.set_part(1, gabor_images[trial_ori]); # set the image (right)
		gabor.set_part(2, gabor_images[trial_ori]); # set the image (left)
		
		if (TRIALS[CHANGE][curr_trial] == "yes") then
			int probe_ori = generate_probe_ori(1, n_ori, trial_ori); # generate a random id that is not the same as the $trial_ori
			probe.set_part(1, gabor_images[probe_ori]); # set the gabor
		else
			int probe_ori = trial_ori;
			probe.set_part(1, gabor_images[probe_ori]);
		end;
		
	else
		gabor.set_part(1, mask_image); # set the image (right)
		gabor.set_part(2, mask_image); # set the image (left)
		int probe_ori = random(1,n_ori);
		probe.set_part(1, gabor_images[probe_ori]);
	end;
	
	# Running Trials
	main_trial.present(); # present trials
	trial_i = trial_i + 1; # counter
end;