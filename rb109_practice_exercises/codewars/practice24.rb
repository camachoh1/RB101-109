=begin

Write a function that takes in a positive parameter and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit. 

rules: 

- if input number is a single digit, return 0.
- method should multiply the digits of input number and return the number of times it took in order to reach a single digit. 

data structures: arrays

algorithm:

- split the input integer into an array of digits.
- loop 
- multiply the elements in the array of digits.
- split the result into an array of digits. 
- repeat the process until the result is 1 digit long. 
=end 

def persistence(num)
  return 0 if num.to_s.size == 1

  result = num.digits.inject(:*)
  iterations = 1

  loop do
    nums = result.digits.inject(:*)
    result = nums 
    iterations += 1
    break if result.to_s.size == 1
  end
  p iterations
end


def persistence(num)
  digits = num.digits
  counter = 0
  while digits.size > 1
    digits = digits.reduce(:*).digits
    counter += 1
  end
  counter
end


# p persistence(999)
# p persistence(39) == 3
# p persistence(4) == 0
# p persistence(25) == 2
p persistence(999) == 4
