
=begin

write a method that returns the number of Friday the 13ths in the year given by an argument. You may assume that the yeat is greater than 1752 (when the UK adopted the modern Gregorian Calendar) and that will remain in use for the forseeable future. 

input: an integer representing a year
output: an integer representing the number of Friday the 13ths in the year given by an argument. 

initialize a date, starting from day 1 of month 1 of given year.



=end 

require 'date'

def friday_13th(year)
  date1 = Date.new(year)
  year_end = Date.new(year,12,31)
  unlucky_days = 0  
  
  date1.upto(year_end) do |date|
    if date.friday? && date.day == 13
      unlucky_days += 1
    end
  end
  unlucky_days    
end   

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
