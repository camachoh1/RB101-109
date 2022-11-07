=begin

Write a method that takes an array as argument, reverses its elements in place; that is, mutate the array passed into the method. The return value should be the same array object. you may not use Array#reverse or Array#reverse!

input: an array 
output: the same array mutated, with all its element reversed. 

we could use #sort! in order to solve this problem. 


=end

def reverse!()

# p list = [1,2,3,4]
# p result = reverse!(list)
# p result == [4, 3, 2, 1] # true
# p list == [4, 3, 2, 1] # true
# p list.object_id == result.object_id # true

# p list = %w(a b e d c)
# p reverse!(list) == ["c", "d", "e", "b", "a"] # true
# p list == ["c", "d", "e", "b", "a"] # true

# p list = ['abc']
# p reverse!(list) == ["abc"] # true
# p list == ["abc"] # true

# p list = []
# p reverse!(list) == [] # true
# p list == [] # true