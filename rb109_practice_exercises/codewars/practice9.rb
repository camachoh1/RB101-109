=begin

Create function named divisors that takes an integer n > 1 and returns an array with all of the integer's divisors except for 1 and the number itsef, from the smallest to largest. If the number is prime returning the string 'n is prime'

input: an integer
output: an array containing all divisors of input number.

rules:

return 'n is prime' if n is prime. 
  - prime numbers are numbers that only have two factors one and itself.

  - input inteher is positive. 
  - if input only has one divisor, return the single integer in array.
  - input is always greater than 1.
  - output should not include 1 or the input integer. 

data structures: arrays

algorithm: 

- create result array
- create counter variable
- loop
  while the counter is less than the input number
    pass the divisors of n into result array.
  increment counter by 1 
    - filter result array, remove 1 and n 
if number is multiple of one and n return num is prime. 

=end 

def divisors(num)
  divisors = []
  counter = 1
  while counter < num
    divisors << counter if num % counter == 0
    counter += 1
  end

  result = divisors.select {|n| n > 1 && n != num} 
  return "#{num} is prime" if result.empty?
  result 
end  

p divisors(15)

def divisors(n)
  divisors = (2...n).select{|item| n % item == 0}
  divisors.empty? ? "#{n} is prime" : divisors
end