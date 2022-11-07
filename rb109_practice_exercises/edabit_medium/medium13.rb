=begin

In this challenge, establish if a given integer is a Curzon number. if 1 plus 2 elevated to num is exactly divisible by 1 plus 2 multiplied by num, the num is a curzon number.

Given a non-negative integer num, implement a function that returns true if num is a curzon number false otherwise 

input: an integer
ouput: a boolean

rules: 

- return true if the input integer is a curzon number.
- a curzon number is the result of elevating 1 + 2 by the input number. the result of this operation is divisible by 1 + 2 * input number. 
- input will always be a non negative integer. 
- input integer is always greater than 0. 

data structures : 

algorithm:

- create variables for num1 and num2
- num1 will receive the return value of 2 **5 + 1
- num2 will receive return value of 2 *5 + 1
return true if the number is curzon if num1  % num2 == 0
=end 

def is_curzon?(num)
  num1 = 2 ** num + 1
  num2 = 2 * num + 1

  num1 % num2 == 0 ? true : false 
end

p is_curzon?(5) == true
p is_curzon?(10) == false
p is_curzon?(14) == true
p is_curzon?(86) == true
p is_curzon?(90) == true
p is_curzon?(115) == false
p is_curzon?(120) == false
p is_curzon?(194) == true
p is_curzon?(293) == true