=begin

if we list all the natural numbers below 10 that are multiples of 2 or 5, we get 3, 5, 6 and 9. the sum of these multiples is 23. 

Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in. 
Additionally, if the number is negative, return 0.

if the number is a multiple of both 3 and 5 count it once. 

input: an integer. 
output: an integer representing the sum of all numbers below input integer that are multiples of 3 or 5. 

rules:

- if the number is a multiple of both 3 and 5, only count it once.
- only positive integers are to be counted, if input integer is negative, return 0. 

data structures: arrays

algorithm: 

- create result array.
- initialize a range starting from 0 up to the input integer value.
- iterate through the range. 
- if the current number is multiple of 3 or 5 pass into result array.
- if current integer is multiple of both 3 and 5 pass it into the result array only once.
- once iteration is completed, sum all of the values of result array.
- return -1 if input integer is < 0.
=end 

def solution(num)
  result = []
  (1..num - 1).each do |n|
    if n % 3 == 0 || n % 5 == 0
      result << n 
    end
  end
  result.sum  
end

p solution(-2)