=begin 

Write a method name include? that takes an array and a search value as arguments. This method should return true if the search value is in the array false if its not. You many not use Array#include? method in your solution. 

input: an array an a search value. 
output: a boolean value true if the search value is part of the array false otherwise.

on this solution, I used a ternary operator that check if the value returned by count method invocation with value passed as argument, will return a value == to 1. if it does, means the search value makes part of array. sinct it is, the ternary operator will return true, else will return false. 

=end 

def include?(arr, value)
  arr.count(value) == 1 ? true : false

end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false