=begin 

create a method that takes in a year and returns the correct century.

input: an integer representing a year
output: a string representing the century.

rules: 

new centuries start on years ending on 1
a century is calculated by dividing a year by 100

data structures: 

algorithm: 

define wich century a year belongs to
  check if a year belongs to the next century by adding 1 to the current century.

each string output contains a suffix. 
  add suffix depending on the century for example 1st, 2nd, 3rd... this can be done with a helper method. 

=end

def suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  case century % 10
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else        'th'
  end  
end   

def century(year)
  century = year / 100
  year % 100 == 0 ? century : century += 1

  "#{century}#{suffix(century)} century"
end   

p century(1756) == "18th century"

p century(1555) == "16th century"

p century(1000) == "10th century"

p century(1001) == "11th century"

p century(2005) == "21st century"