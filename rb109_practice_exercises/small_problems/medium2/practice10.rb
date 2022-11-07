=begin
Write a method that computes the difference between the square sum of the first n positive integers and the sum of the squares of the first n positive integers. 

input: an integer (n)
output: an integer representing the sum of the squares of the first n positive integers

=end

def sum_square_difference(num)
  first_n_square = (1..num).to_a.inject(:+)**2
  squares = (1..num).to_a.inject {|accumulator,num| num**2 + accumulator}
  difference = first_n_square - squares
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150