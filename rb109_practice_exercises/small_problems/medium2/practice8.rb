=begin

A featured number is an odd number that is multiple of 7, and whose digits occur exactly once each. So for example 49 is a featured number, but 98 is not(ir is not odd), 97 is not(is not a multiple of 7), and 133 is not( the digit appears twice)

Write a method that takes a signle integer as argument, and returns the next featured number that is greater than the argument. return an error message if there is no next featured number. 

input: an integer
output: an in teger representing the next featured number that is greater than the argument. Return an error if there is no next featured number. 

rules: 

a featured number is an odd number that is multiple of 7, and whose digits occur exactly once each. 

- create helper method in order to verify if a number is a featured number. 

- if a number is a featured number,
  - loop
increment featured number by 1 
break out of the loop if the current number is a featured number. 
return featured number. 

=end 

def featured?(num)
  num.odd? && (num % 7 == 0) && (num.digits.uniq == num.digits)
end  

# def featured(num)
#   if featured?(num)
#     p num
#     # loop do 
#     #   num += 1
#     # return num if featured?(num)
#     # end 
#   end
# end

p featured?(12) 
# p featured(20) == 21
# p featured(21) == 35
# p featured(997) == 1029
# p featured(1029) == 1043