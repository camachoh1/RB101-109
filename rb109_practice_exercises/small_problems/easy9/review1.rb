=begin 
create a method that takes two integers as arguments. the first argument is a count, the second argument is the first number of a sequence that your method will create. The method should return an array that contains the same number of elements as the count argment, while the vaues of each element will be multiples of the starting number. 

you may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value if the count is 0, an empty list should be returned. 

input: two integers, one representing a count the second representing the starting number for the elements in the result array.

output: an array containing n number of integers that are multiples of second input argument. 

rules:

- the count will always have a value of 0 or greater.
- starting number can be any integer value. 
- if the count is 0, an empty list shold be returned. 

data structures: arrays

algorithm: 

- create a result array
- count times pass in a number that is divisible by the second argument into result array.

=end

def sequence(count, num)
  result = []
  1.upto(count) do |n|
    result << num * n
  end
  result
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []