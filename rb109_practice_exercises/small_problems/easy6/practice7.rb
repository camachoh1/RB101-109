=begin

Write a method that takes an array as argument and returns two arrays (as pair of nested arrays) that contain the first half and second half of the original array, respectively. if the original array contains an odd number of elements, the middle should be placed in the first half array. 

input: an array
output: two different arrays containing the first half and second half of the original array. 

rules: 

if the original array contains an odd number of elements, the middle element should be placed in the first half array. 

if input aray contains one integer, only return a single array with this element, second one should be empty.

if input is an empty array return two empty arrays. 

data structure: arrays

algorithm:

first check the size of the input array in order to determine wether the array has an odd or even number of elements. 

define the middle point of the input array, store this value in a variable. 

create result array. 

store the two halves of input array in result array.

midpoint stays on first half if input array size is odd. 

=end 

# def halvsies(arr)
#   result = []
#   midpoint = (arr.size / 2.0).ceil
#   if arr.size.odd?   
#     result = [arr[0..midpoint], arr[midpoint + 1..-1]]
#   else  
#     result = [arr[0..midpoint - 1], arr[midpoint..-1]]
#   end  
#   p result
# end  

def halvsies(arr)
  midpoint = (arr.size / 2.0).ceil
  first_half = arr.slice(0,midpoint)
  second_half = arr.slice(midpoint, arr.size - midpoint)
  p [first_half, second_half]
end  

#notes: do not rush the algorithms, this is the most important part of the process. 



p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]


def halvsies(arr)
  middle = arr.size / 2 
  arr.size.odd? ? [arr[0..middle],arr[middle + 1..-1]] : [arr[0...middle], arr[middle..-1]]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]