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
- Fix: 40
- cue:
	- 30 = left
	- 39 = right
- Fix Jitter:
	- 41 = 350 ms
	- 42 = 400 ms
	- 43 = 450 ms
	- 44 = 500 ms
- target: 
	valid = 100 + orientation
	catch = 199
- probe:
	- 100 + orientation
	- response:
		- correct = 10
		- wrong = 19
- pas: 
	- pas1 = 11
	- pas2 = 12
	- pas3 = 13
	- pas4 = 14

- det:
	- response:
		- correct = 150 + orientation
		- wrong = 200 + orientation

# TODO

* block organization
* timing
* check accuracy and rt for det
* check how to send manual triggers
* check if the triggering system works
* check size and numbers of gabors