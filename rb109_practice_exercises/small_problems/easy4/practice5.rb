=begin

input: an integer greater than 1
output: the result of the sum of all multiples of 3 or 5 that lie between 1 and some other number. 

rules: 
number passed in is an integer greater than 1. 

data structure: arrays

algorithm: 

create an array to contain the numbers that are either multiples of 3 or multiples of 5. 

iterate through the range of numbers, select and pass in the values into multiples array. 

sum all multiples values.

=end

def multisum(number)
(1..number).select {|num| num % 3 == 0 || num % 5 == 0}.inject(:+)
end  

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168