=begin

Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz" and finally if  a number is divisible by 3 and 5 print "FizzBuzz"

algorithm: 

set a range starting from input number 1 as begining and second input number as the ending. 

iterate through the range output every element from the range. unless the number is divisible by 3 in which case ouput fizz. 

if divisible by 5 output buzz if divisible by both 3 and 5 output fizzbuz. 

=end 

def fizzbuzz(num1, num2)
  result = []
  num1.upto(num2) do |num|
    if (num % 3 == 0 && num % 5 == 0)
      result << "FizzBuzz"
    elsif num % 5 == 0
      result << "Buzz"
    elsif
      num % 3 == 0 
      result << "Fizz"
    else 
      result << num 
    end
  end 
  result.join(', ') 
end  

p fizzbuzz(1,15)