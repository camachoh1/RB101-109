=begin

Write a method that takes two array arguments in which each array contains a list of numbers, and returns a new array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements. 

input: two arrays
output: a new array containing the product of each pair of numbers from the argument arrays that have the same idex. 

algorithm: 

create a result array

iterate through of the input arrays using each_with_index. 

pass in the return value of multiplying the element from arr1 being passed into the block with the element specified by the index value of the block of arr2 into the result array. 

=end 

# def multiply_list(arr1, arr2)
#   result = []
#   arr1.each_with_index do |num, index|
#     result << num * arr2[index]
#   end
#   p result   
# end   

# def multiply_list(arr1, arr2)
#   result = []
#   counter  = 0

#   while counter < arr1.size
#       result << arr1[counter] * arr2[counter]
#       counter += 1
#   end
#   result 
# end 

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map {|sub_arr| p sub_arr.inject(:*)}
end   

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]