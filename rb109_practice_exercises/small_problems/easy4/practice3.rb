=begin

In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, unless the year is also divisible by 100. If the year is evenly divisibly by 100, then its not a leap year unless the year is evenly divisibly by 400 

Assume this rule is good for any year greater than 0. Write a method that takes any year greater than 0 as input, and returns true if a leap year, or false if its not a leap year.

input: a year 
output: a boolean value, true if a year is considered a leap year, false otherwise. 

rules: 

a leap year is a year that is evenly divisible y 4, unless also divisible by 100. If the year is evenly divisible by 100, then is not a leap year unless is evenly divisible by 400. 

this rule applies to every year greatern than year 0 


=end 

def leap_year?(year)
  if ( year % 4 == 0 && year % 100 != 0 ) || ( year % 400 == 0 )
    true
  else
    false
  end  
end   


# refactor

# def leap_year?(year) 
#   (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
# end  

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true