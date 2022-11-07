=begin

Create a 2D array. A matrix is ordered if its (0,0) elements is 1 or its (0,1) element is 2, and so on. Your function needs to create an a x b matrix. a is the first argument and b is the second.

input: two integers one representing the number of elements in the array and 2 the number of elments in each sub array.
outut: a 2D array. 

rules: 
- first number represents the number of sub arrays and the second number the number of elements in each sub array. 
- both input integers are positive 
- input integers are always greater than 0
- if input is 0 return a 2D empty array.

data structure: arrays

algorithm: 

- create result array.
- initialize range from 1 up to value of n1 * n2
- pass each count element into a sub arr 
- n1 times pass slices from sub arr that are the same size as n2 
=end 

# def ordered_matrix(n1,n2)
#   result = []
#   sub_arr = []
#   n1.times do |count1|
#     1.upto(n1 * n2) do |count2|
#       sub_arr << count2  
#     end
#     result << sub_arr.slice!(0,n2)
#   end
#   result
# end

def ordered_matrix(n1,n2)
  p (1..n1*n2).each_slice(n2).to_a
end

p ordered_matrix(1,2) == [[1,2]]
p ordered_matrix(3,3) == [[1,2,3],[4,5,6],[7,8,9]]
p ordered_matrix(5,5) == [[1,2,3,4,5],[6,7,8,9,10],[11,12,13,14,15],[16,17,18,19,20],[21,22,23,24,25]]
p ordered_matrix(3,4) == [[1,2,3,4],[5,6,7,8],[9,10,11,12]]