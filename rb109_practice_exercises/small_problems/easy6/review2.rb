=begin
Write a method that takes an array, and returns the new array with the original list in reverse order. do not modify the original list.

input: an arry
output: an array with all elements reversed. The original list remains unmodified.

rules:

if input array is empty, return an empty array
if input array contains 1 element, return the single element. 

data structures: arrays

algorithm: 

- I want to try something that I havent tried before.
I will create a shallow copy of the input array and complete the reverse operations on the shallow copy using my reverse! method.
- the return value will be the reversed duplicate of the input array

=end

# def reverse!(arr)
#   temp = []
#   arr.size.times {temp << arr.pop}
#   temp.size.times {|count| arr << temp[count]}
#   arr 
# end

# def reverse(arr)
#   copy = arr.map(&:dup)
#   reverse!(copy)
# end


def reverse(arr)
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true