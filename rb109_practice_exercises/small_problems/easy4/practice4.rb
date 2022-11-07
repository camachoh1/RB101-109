=begin 


The british empire adopted the gregorian calendar in 1752, which was a leap year. prior to 1752, the julian calendar was used. under the julian calendar, leap years occur in any year that is evenly divisible by 4. 

=end 


def leap_year?(year)
  if year < 1752 && year % 4 == 0
    return true 
  elsif (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
    return true
  else 
    false
  end
end  

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true