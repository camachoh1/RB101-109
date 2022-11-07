require 'pry'
=begin

input: an integer representing minute based time. 
output: a string representing the input in 24 hour time format.

rules:

if input minutes are positive, time of day is after midnight. 
- if input minutes are negative, time is before midnight. 
- input can be any type of integer input. (negative, positive and 0)

questions:

- an hour has 60 minutes, in a clock once 59 is reached, the counter goes back to 00 in minutes and 1 in hours. How do we reset the time back to 00?

- same question applies to hours in a day. After 23 hours, counter goes back to 00:00. How do we restart the value of the hour. 

- what is considered a minute? hour? and seconds?
- how many minutes are in a day? 

- is midnight a constant value?

algorithm: 

- create constants defining hours in a day, minutes in an hour, seconds per minute. 
  - a day has 24 hours.
  - 24 hours are 1440 minutes result of multipying 24 *60.
  - an hour is 60 minutes 1/24 of a day
  - a minute is 1/60 of an hour. 
- using divmod, we can make the conversion from minutes to hours by passing the value of hour (60minutes) as argument to divmod. 
example: 1439.divmod(hour) == [23,59]

format the output using #format

=end

DAYS = 24
HOURS = 60
MINUTES_PER_DAY = HOURS * DAYS

def normalized_time(minutes)
  while minutes < 0
    minutes += MINUTES_PER_DAY
  end
  
  minutes % MINUTES_PER_DAY
end  


def time_of_day(delta_mins)
  delta_mins = normalized_time(delta_mins)
  hours = delta_mins.divmod(HOURS)[0]
  minutes = delta_mins.divmod(HOURS)[1]


  p format("%02d:%02d", hours,minutes)
end



p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"