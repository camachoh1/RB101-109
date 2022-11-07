=begin

create a function that takes two numbers as arguments and returns the greatest common divisor of the two numbers.

input: two integers.
output: an integer representing the greatest como divisor of the two numbers.

rules: 

- the GCD is the highest number that can divide both arguments without a remainder. 

data structures: arrays

algorithm: 

- get every single divisor for each input number and store in an array.
- compare the two arrays and return the max value that is common in both arrays.

=end 

def gcd(num1,num2)
  result = []
  if num1 > num2
    result = 1.upto(num1) do |i|
      result << i if % num1 == 0 && i % num2 == 0
    end
  else 
    result = 1.upto(num2) do |i|
      result << i if % num1 == 0 && i % num2 == 0
    end 
  end
  p result
end

gcd(14,28)