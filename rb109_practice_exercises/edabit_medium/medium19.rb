=begin

create a function that takes two numbers as arguments(num, length) and returns an array of multiples of num until the array length reaches length.

input: two integers, one representing the initial point of an array and the other the length of the array.
output: an array

rules: 
- return an empty array if the array length is equals to 0
- output must contain num.

data structures: arrays

algorithm: 

- create a result array
- create first_num variable and assign num as value.
- length times, pass in num into result array.
- increment num by num. 
return result array

=end 

def array_of_multiples(num, length)
  result = []
  first_num = num 
  length.times do 
    result << first_num
    first_num += num
  end
  result
end

p array_of_multiples(7,5)