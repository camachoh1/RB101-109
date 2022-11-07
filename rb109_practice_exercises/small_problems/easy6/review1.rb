=begin

Write a method that takes an array as argument, and reverses its elements in place; that is, mutate the array passed into this method. The return value should be the same array object.

input: an array
output: the same array with the elements in reverse order.

data structures: arrays

algorithm:

- create an empty array called temp
- pass in the elements from input array into temp in reverse order by popping the last element on each iteration.
- pass temp into input array

=end 

def reverse!(arr)
  temp = []
  arr.size.times {temp << arr.pop}
  temp.size.times {|count| arr << temp[count]}
  arr 
end

p list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

p list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

p list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

p list = []
p reverse!(list) == [] # true
p list == [] # true