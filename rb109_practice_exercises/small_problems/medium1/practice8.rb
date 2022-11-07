=begin

Write a recursive method that computes the nth fibonacci number, where nth is the argument to the method. 

input: an integer
output: an integer representing the nth fibonacci number. 

rules: 

a recursive method call themselve at least once.
they have a condition that stops the recursion.
they use the result returned by themselves. 

algorithm: 

in order to compute a fibonacci number, we need to add the two preceding numbers. 

  - create variables that correspond to num1 and num2
  - the values of this variables are the return value of calling fib and fib +1 
  - we break of the recursion once fib is equals to n. 
=end 

def fibonacci(n)
  return 1 if n <= 2
  fibonacci(n - 1) + fibonacci(n - 2)
end 

p fibonacci(3)