=begin 
Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. So the years 1901-2000 comprise the 20th century.

input: an integer representing a year. 
output: a string representing the century. 

rules: 

- the output string must begin with the century number and ends with the suffix of said century. 

- new centuries begin in years that end with 01. 

questions: 

given a year how to calculate a century? 
by dividing the year by 100. 

based on this, we can assume a new century would be a year / 100 + 1 

since centuries start on years ending with 1, for example 2001 == 21st century, we need to find a way to see if a year is part of the new century, for example 2000 == 20th century. in order to find out wether a year is part of the previous century, the year must be divisible by 100. for example: 2000 % 100 == 0. 2000 is divisible by 100 thus belongs to the previous century. 
on the other hand, 2001 % 100 == 1. This means 2001 belongs to the next century. 


next we need to find out how to add the suffix to the century. 

we know that if a century ends in one then it is the first 1st, 21st, etc. Now, this rule wont apply to the number 11 in this case is a number ending in 1 but its suffix is th. This same case scenario applies to 12th, 13th which are numbers ending on 2 but cant be called second such as 22nd or 2nd, 3rd or 23rd.
So right here we got an edge case to keep in mind.

other than 1st, 2nd, 3rd every other number uses th. 

This pattern is very important. 

in order to make the suffix be dynamic and change depending the output of century, a case statement would be the best way to go abour it. 

this case statement will be part of a helper method that receives a number and decides the proper sufix based on the last digit of the number, in this case the digit representing the century. 

in order to find the last digit of the century, we can either use the modulo operator to get the last decimal of the century. or we could use the digits method in order to turn the number into an array of digits. Since digits returns the digits in reverse order, we can call the first element from this array to get the last number of the century. This way works but its not as clear since someone reading the code will have to know how digits work in order to understand why first is called. 


=end

# first approach

# def part_of_next_century?(year)
#   if year % 100 == 0
#     return false
#   else
#     true
#   end
# end

# def year_between_11_and_19?(century)
#   (century % 100).between?(11,19)
# end

# def suffix(century,year)
#   if year_between_11_and_19?(century)
#     suffix = 'th'
#   elsif century % 10 == 1
#     suffix = 'st'
#   elsif century % 10 == 2
#     suffix = 'nd'
#   elsif century % 10 == 3
#     suffix = 'rd'
#   else
#     suffix = 'th'
#   end
#   suffix
# end

# def century(year)
#   century = year / 100
#   if part_of_next_century?(year)
#     century += 1
#   end
#   output = “#{century}#{suffix(century,year)}”
#   puts output
#   output
# end


def century(year)
  century =  year / 100 + 1 
  if year % 100 == 0
    century -= 1
  else 
    century  
  end
  century.to_s + suffix(century) 
end


def suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit_of_century = century % 10

  case last_digit_of_century
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else        'th'
  end     
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'






