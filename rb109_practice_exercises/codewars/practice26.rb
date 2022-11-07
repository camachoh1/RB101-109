=begin

Create a method called 'power' that takes two integers and returns the value of the first argument raised to te power of the second. Return nil if the second argument is negative. 

note the ** operator has been disabled. 

input: two integers
output: an integer, result of raising the first argument to the power of the second. 

rules: 

- method should return nil if the second argument is a negative integer. 
- if second argument is 0 return 1. 
- method returns the result of raising the first argument to the power of the second argument. 

data structures: 

algorithm: 

- create result variable. 
- pass in the result of multiplying the input number by itself n times specified by input 2. 
=end

def power(base, exponent)
  return nil if exponent.negative?
  return 1 if exponent == 0
  
  result = []
  exponent.times{ result << base }
  result.inject(:*)
end

p power(2, 3) == 8
p power(10, 0) == 1
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(10, 0) == 1
p power(2, 3) == 8
p power(3, 2) == 9
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(8, -2) == nil
