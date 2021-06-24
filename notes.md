# Notes

## Triggers

- Triggers can be from 1 to 253
- the 254 code is for start the recording

### Codes

- cue: target side --> 50 (left); 59 (right);
- target: orientations --> 100 + ori; 199 = catch
- probe: orientations --> 200 + ori; 
- response: correct ; wrong
- pas: pas1 = 11, pas2 = 12, pas3 = 13, pas4 = 14

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

- 254 = start recording
- Responses (trigger, name, key):
	- 11, pas1, 1
	- 12, pas2, 2
	- 13, pas3, 3
	- 14, pas4, 4
	- 20, correct
	- 29, wrong
	- 99, space
- Cue:
	- 50 = left
	- 59 = right
- Fix Jitter
	- 61 = 350
	- 62 = 400
	- 63 = 450
	- 64 = 500
- Target
	- 100 + orientation (e.g. 101 = orientations 1) = valid
	- 199 = catch
- Probe
	- 200 + orientation

# TODO

* block organization
* timing
* save TRIALS object for debug and backup
* ask roy about considering all triggers a posterior instead of producing wrong and right triggers