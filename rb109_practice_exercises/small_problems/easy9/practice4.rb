=begin

Write a method that takes an integer argument, and returns an array of all integers, in sequence, between 1 and the argument. 

You may assume that the argument will always be a valis integer that is greater than 0. 

input is an integer. 
output is an array of numbers counting up from 1 to the input integer. 

if the input integer is 1 then 1 will be returned. 

input will always be greater than 0. 

algorithm. 

create a range that starts on 1 with the input integer as its endpoint. 

iterate through the range. in this case is better to call the tranformation method map in order to get an array as ouput. 

=end 

def sequence(num)
  num.positive? ? (1..num).to_a : (1..-num).to_a
end  



p sequence(-4) == [1,2,3,4]
p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]