=begin

Write a method that takes an array and returns a new array with the elements of the original list in reversed order. Do not modify the original list. 

define the middle of the array. 
create a new array containing the elements from input array from last index to middle -1 and from middle to 0
flatten result array. 

=end 




p reverse([1,2,3,4]) == [4,3,2,1]          # => true
# p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
# p reverse(['abc']) == ['abc']              # => true
# p reverse([]) == [] 
# p list = [1, 3, 2]                      # => [1, 3, 2]
# p new_list = reverse(list)              # => [2, 3, 1]
# p list.object_id != new_list.object_id  # => true
# p list == [1, 3, 2]                     # => true
# p new_list == [2, 3, 1]   