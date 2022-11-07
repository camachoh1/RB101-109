=begin

Write a method that calcu;ates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. 

input: a number representing the number of digits of x fibonacci number.
output: an integer representing the index number of the x fibonacci number that has the number of digits specified by the input number. 

you may assume that the argument is always greater than or equal to 2. this is because 2 is the third number of the fibonacci series. 

in order to calculate the fibonacci sequence or numbers, we need to keep in mind that a fibonacci number is the result of the sum of the two preceding numbers. 

algorithm: 

create a variable rpresenting the first number and second number. 

create a variable representing the index or counter with initial value of 2. 

create result variable

add the value of first number by second number in order to get fib num. 
reassign the values of first number and second number
  first number will receive the return value of num2.
  num 2 will receive the value of fib

increase the counter by 1. 
break out of the loop once fib size is equals to the input.

=end 

def find_fibonacci_index_by_length(num)
  num1 = 1
  num2 = 1
index = 2

  loop do 
    fib = num1 + num2
    num1 = num2
    num2 = fib
    index += 1
    break if fib.to_s.size == index
  end
  p counter
end    

p find_fibonacci_index_by_length(2) == 7          # 1 1 p 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 p 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847