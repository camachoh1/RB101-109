=begin

A triangle is classified as follows: 

right: one angle of the triangle is a right angle (90 degrees)
acute: all 3 angles of the triangle are less than 90 degrees
obstuse: One angle is greater than 90 degrees. 

To be a valid triangle, the sum of the angles must be exactly 180 degrees, and all angles must be greatern than 0: if either of these conditions is not satisfied, the triangle is invalid. 

Write a method that takes 3 angles of a triangle as arguments, and returns a symbol. :right, :acute, :obstse or :invalid depending on the type of triangle. 

You may assume integer valued angules so you dont have to worry about floating point errors. You may also assume that the arguments are specified in degrees. 

input: three integers representing degrees of angles of the triangle. 

outpu: a symbol representing each type of triangle if the input integers meet the requirements expressed for each type of triangle.

rules: 

right triangle: one angle of the triangle is a right angle(90 degrees)

acute: all 3 angles of the triangle are less than 90 degrees. 

obstuse: one angle is greater than 90 degrees. 

a valid triangle must have a value of exacly 180 degrees as result of the sum of all angles and all angles must be greater than 0. 

all input vales are integers. 

algorithm: 

create a validating method in order to check if a triangle is valid. 
  - this method receives an array of integers. 
  if the total of summing all elements from array is 180 and if every element in the array has a value greater than 0 return true. 


- create an angles array containing all input integers.
- check if a traingle is valid by passing the angles into validating method, if it is, iterate through angles array and check the values of every element in the array. 
- return :right if one angle is 90 degrees
- return :acute if all anfles are less than 90 degrees.
- return obstuse if one angle is greater than 90 degrees.
- return :invalid if triangle is not valid. 

=end 

def valid_triangle?(arr)
  (arr.all? {|angle| angle > 0}) && (arr.inject(:+) == 180) 
end

def triangle(num1, num2, num3)
  angles = [num1, num2, num3]

  if angles.any? {|angle| angle == 90} && valid_triangle?(angles)
    :right 
  elsif angles.all? {|angle| angle < 90} && valid_triangle?(angles)
    :acute 
  elsif angles.any? {|angle| angle > 90} && valid_triangle?(angles)
    :obtuse
  else  
    :invalid 
  end 
end  

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid