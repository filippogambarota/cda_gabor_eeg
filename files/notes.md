# Notes

## Triggers

- Triggers can be from 1 to 253
- the 254 code is for start the recording

## From Maya Notes

- start_recording_trial -> is for sending the initial trigger

## Response Matching

According to NBS Response Matching:

> - hit - the stimulus was a target and was associated with a correct response 
- incorrect - the stimulus was a target and was associated with a response that was not correct 
- miss - the stimulus was a target and was not associated with a response 
- false alarm - the stimulus was an active non-target and was associated with a response 
other - the stimulus was not any of the above 

So in my case:
- valid trials AND correct response (memory == probe AND nochange response OR memory != probe AND change response) --> **HIT**
- valid trials AND wrong response (opposite of before) --> **INCORRECT**
- catch trials AND response --> **FALSE ALARM**

**PAS** responses should be logged as **FALSE ALARM** because they are active but non target. Here I need simply the response, trigger and RT

## Triggers


- start recording: 254
- Trials = 1:100 (at maximum)
- Fix: 101
- Cue:
	- 102 = left
	- 103 = right
- Fix Jitter:
	- 104 = 300 ms
	- 105 = 350 ms
	- 106 = 400 ms
	- 107 = 450 ms
	- 108 = 500 ms
- target: 
	valid = 110 + orientation (11)
	catch = 199
- retention: 200
- probe:
	- 130 + orientation
	- response:
		- correct = 140
		- wrong = 149
- pas: 
	- pas1 = 151
	- pas2 = 152
	- pas3 = 153
	- pas4 = 154

- det:
	- response:
		- correct = 160 + orientation
		- wrong = 180 + orientation

# TODO

* block organization
* timing
* check accuracy and rt for det
* check how to send manual triggers
* check if the triggering system works
* check size and numbers of gabors
