=begin

Write a method that takes a number as an argument. If the argument is a positive number, return the negative of that number. if the number is 0 or negative, return the original number. 

input is an integer, it could be a positive or negative number. 

output is an integer, which will be negative if the input is positive and will be 0  if the input is == 0

we can use the inteher#- method in order to turn the values into negative. 

and a conditional statement that checks the value of the input number. if positive, return the negaive version if == 0 return 0 
if the input is negative, return the original number. 

=end 

def negative(num)
  return num if num <= 0 
  return -num if num.positive?
end  

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0   