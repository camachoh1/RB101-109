=begin

Write a method that takes an array of integers as input, multiplies all the numbers together, dives the result by hte number of entries in the array, and then prints the result rounded to 3 decimal places. Assume the array is non empty. 

input: an array od numbers
output: a floatinf number representing the average value of multiplying all elements from input array. 

rules: 

array is non empty
output must be rounded to 3 decimal places. 

Thoughts: 

I can think of multiple ways to solve this problem. 
We can use inject in order to get the multiplication of all elements of the array. 

We can also use a variable which can act as accumulator. 

algorithm

This will cover the two solutions. 

create a variable that stores the value of multiplying the elements from the array, being using inject or iterating with each and using an accumulator variable. 

transform the return value of the multiplication into a floating number and divide the return value of said multiplication by the array size. 

round the values to 3 decimal points. 

=end 

# def show_multiplicative_average(arr)
#   arr_result = arr.inject(:*)
#   average = arr_result.to_f / arr.size 
#   p format("%.3f", average)
# end

def show_multiplicative_average(numbers)
  product = 1.to_f
  numbers.each {|number| product *= number }
  average = product / numbers.size
  puts "the result is #{format('%.3f', average)}"
end   

p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667