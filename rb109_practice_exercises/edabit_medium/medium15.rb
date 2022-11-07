=begin

Write a function that takes an array of elements and returns only the integers.

input: an array containing multiple elements.
output: an array of numbers

rules: 

- input array contains different types of elements. 
- output only contain integers, floating numbers are not included.

data structures: arrays

algorithm: 

iterate through the input array and select only integers from 0-9.
return them in an array.

=end

def return_only_integer(arr)
  p arr.select {|element| element.is_a?(Integer)}
end  

p return_only_integer([9, 2, "space", "car", "lion", 16])== [9, 2, 16]

p return_only_integer(["hello", 81, "basketball", 123, "fox"])== [81, 123]

p return_only_integer([10, "121", 56, 20, "car", 3, "lion"])== [10, 56, 20, 3]

p return_only_integer(["String",  true,  3.3,  1])== [1]