=begin

Write a method that takes two arrays as arguments, and returns an array that contains all of the values from the argument arrays. 
There shoyld be no duplication of values in the returned array. even if there are duplicates in the original array. 

input: two arrays
output an array containing all elements from both input arrays. 

rules: 

output array should not have repeated elements even if there are duplicates in input arrays. 

we can assume that this method can receive empty arrays. 

return array is a new array. 

algorithm:

we can use Array#union in order to merge both arrays, and uniq in order to remove repeated elements. 

another solution would be passing all elements from each array into a result array, sort it and remove duplicates. this can be done with a loop and counter representing index. again using uniq in order to remove duplicates. 

=end 

# def merge(arr1,arr2)
#   arr1.union(arr2)
# end  

# def merge(arr1,arr2)
#   result = []
#   counter = 0
#   loop do
#     result << arr1[counter]
#     result << arr2[counter]
#     counter += 1
#     break if result.size == arr1.size + arr2.size
#   end
#   p result.uniq.sort
# end  

def merge(arr1,arr2)
  arr1.each do |element|
    arr2 << element
  end
  arr2.uniq.sort
end   

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]