=begin

Write a function

triple_double(num1, num2)
which takes numbers num1 and num2 and returns 1 if there is a straight triple of a number at any place in num1 and also a straight double of the same number in num2.

If this isn't the case, return 0


inputs: two integers
output: one if the two integers meet the contitions stated by the problem 0 otherwise. 

rules: 

- input numbers are not necesarily the same size. 
- method should return 1 if num1 has 3 consecutive numbers with the same value and num2 has two consecutive nums with the same value. 
- 0 if the requirements are not met. 

data structures: arrays 

algorithm:

create a track variable with initial value of 0
split the numbers into arrays of digits. 
iterate through of digits. 
increment track by 1 if the current number is equals to the previous number else track == 0 


=end 

def triple_double(num1, num2)
  arr1 = num1.to_s.chars.slice_when {|a,b| a != b}.to_a
  arr2 = num2.to_s.chars.slice_when {|a,b| a != b}.to_a
  
  triple = arr1.select {|arr| arr.size == 3}
  double = arr2.select {|arr| arr.size == 2}
  
  return 0 if triple.empty? || double.empty? 
  triple[0].size == 3 && double[0].size == 2 ? 1 : 0
  
end

p triple_double(451999277, 41177722899) == 1
p triple_double(1222345, 12345) == 0
p triple_double(12345, 12345) == 0
p triple_double(666789, 12345667) == 1
p triple_double(10560002, 100) == 1
p triple_double(1112, 122) == 1