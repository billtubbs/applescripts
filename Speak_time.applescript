(* Applescript written by Bill Tubbs
This script uses the built-in speech synthesiser on Mac OS X 
to speak the current time in an approximate fashion. E.g.
"It's half past eleven" 
TODO: It says "It's just gone quarter to zero" at 11:51
*)

set theVol to get volume settings
set readAloud to not (output muted of theVol)
if readAloud then
	try
		set theDate to current date
		set theTimeinSeconds to time of theDate
		set theTimeinMinutes to theTimeinSeconds div 60
		set theMinutes to theTimeinMinutes mod 60
		set theHour to (theTimeinMinutes div 60) mod 12
		set theNearestQuarter to (theMinutes + 7.5) div 15
		set theMinutesPast to (theMinutes - 15 * theNearestQuarter)
		
		if theMinutesPast is greater than 2 then
			set theApproximation to "just gone "
		else if theMinutesPast is less than -2 then
			set theApproximation to "nearly "
		else
			set theApproximation to {}
		end if
		
		if (theNearestQuarter mod 4) is 0 then
			set theTime to (theHour + (theNearestQuarter div 4)) & "o'clock"
		else if theNearestQuarter is 1 then
			set theTime to "quarter past " & theHour
		else if theNearestQuarter is 2 then
			set theTime to "half past " & theHour
		else if theNearestQuarter is 3 then
			set theTime to "quarter to " & ((theHour + 1) mod 12)
		end if
		
		set theCompleteSentence to "It's " & theApproximation & theTime
		--Use the following dialog to debug
		--display dialog theHour & "h " & theMinutesPast & "m " & theNearestQuarter as string
		say theCompleteSentence
		
	on error the error_message number the error_number
		display dialog "Error: " & the error_number & ". " & the error_message buttons {"Cancel"} default button 1
	end try
end if