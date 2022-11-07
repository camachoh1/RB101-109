=begin

Write a method that takes an array of numbers and then returns the sum of the sum of each leading subsequence for that array. you may assume that the array always contains at least one number. 

input: an array of numbers
output: an integer, result of the sum of the sums of each leading subsequence for the input array. 

rules: 

input array always contains at least one number. 

if input array only contains one number, return the single number. 

algorithm: 

sum all elements from 0 up to the array size.
subract one from array size and sum the value.
contune until arr size variable == 0. 
store the values in result array then sum all values from result array. 

=end 

def sum_of_sums(arr)
  limit = arr.size
  result = []
  while limit > 0
    result << arr[0...limit].inject(:+)
    limit -= 1
  end 
  p result.inject(:+)   
end  

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35