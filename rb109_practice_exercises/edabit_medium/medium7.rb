=begin

Create a method that takes three integer arguments (a,b,c) and returns the amount of integers wich are of equal value. 

input: three integers.
output: an integer representing how many of the input integers are repeated elements. 

rules: 

the method should return 0, 2 or 3. 

data structures: arrays

algorithm: 

create an array that contains all input elements.
count number of repeated elements. 

=end 

def equal(num1,num2, num3)
  arr = [num1,num2,num3]
  arr.each do |num|
    return 2 if arr.count(num) == 2
    return 3 if arr.count(num) == 3
    return 0 if arr.count(num) == 1 
  end  
end  


p equal(3, 4, 3) == 2

p equal(1, 1, 1) == 3

p equal(3, 4, 1) == 0
