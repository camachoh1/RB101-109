=begin

Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a string that represents that angle in degrees, minutes and seconds. You should use a degree symbol to represent degrees, a single quote ' to represent minutes, and a double qupte to represent seconds. A degree has 60 minutes, while a minute has 60 seconds. 

input: a floating number representing an angle between 0 and 360 degrees. 
output: a string representing the input angle in degrees minutes and seconds. 

rules: 

- when formating minutes and seconds, use a leading zero
- input can be a number between 0 and 360. 
- 360 degrees can be represented as 360'00'00'' || 0'0'0'' 

data structures: arrays

algorithm: 

- create constant values for degrees minutes and seconds. 
- store degrees value in a variable by splitting the input integer and maintaing the whole number. 
- store minutes value in a variable by storing the whole number from the return value of multipliying the decimal value of input number by minutes constant.
- store minutes value by multiplying the value of minutes by the value of seconds constant. 
- round up all reusults to be 2 digits. 
- if a number is one digit long then format so that a leading zero is added. 
- interpolate the values of degrees minutes and seconds in a string in order to format the result string. 

=end 

DEGREE = "\xC2\xB0"

MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60


def dms(angle)
  degrees = angle.to_s.split('.')[0]
  minutes = angle % 1 * MINUTES_PER_DEGREE
  seconds = minutes % 1 * SECONDS_PER_MINUTE
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes,seconds)
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")