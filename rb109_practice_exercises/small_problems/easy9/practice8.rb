=begin

Create a method that takes two integers as arguments. The first argument is a count, and the second is the first number of a sequence that your method will create. The method should return an array that contains the same number of elements as the count argument, while the values of each element will be multiples of the starting number. 

You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value. 

input: two integers, one representing a count the second is the first number of a sequence. 

output: an array that contains the same number of elements as the count argument, the vaues will be multiples of the starting number. 

if the count is 0 an empty list should be returned. 
the starting number can be any integer value. 

here we need to create a result array first in order to store the new list. 

create a variable to store the value of the initial number. 
loop 

pass in starting num into the result array
increment starting num by starting num. 

continue until result arr is equals to count size. 

keep in mind that if the count argument is 0 an rmpy collection must be returned. 


the index number of each element can be seen as the multiple location for each value in the array. 

for example on the second case, -7 * 1 == -7, -7 * 2 == -14, -7 * 3 == -23 and so on. so using a range starting from 1 up to count will act as the index/multiple numbers for our array. 


=end 

def sequence(count, starting_num)
  result = []
  num = starting_num
  loop do 
    break if result.size == count
    result << num
    num += starting_num
  end
  result  
end 


p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
