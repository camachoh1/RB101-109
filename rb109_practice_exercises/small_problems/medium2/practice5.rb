=begin

A triangle is classified as follows: 

equilateral: all 3 sides are of equal length
isosceles: 2 sides are of equal length, while the 3rd is different. 
scalene: all 3 sides are of different length. 

To be a valid traingle, the sum of the lengths of the two shortest sides must be greater than the length of the shortest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid. 

Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, isosceles, :scalene, or :invalid depending on wether the triangle is equilateral, isoceles, scalene, or invalid. 

inputs: three integers representing each side of a triangle. 
output: a symbol representing the type of triangle based if the triangle is valid or invalid if the triangle is not valid. 

rules: 

a valid triangle must have lengths greater than 0 on all sides and the sum of the lengths of the two shortest sides must be greater than the length of the longest side. 

data structure: arrays

algorithm: 

create constant with an array of symbols as value. 

using conditional statements: 
  if the three input numbers are all equals, return equilateral
  if input number 1 and 2 are equals but 3 is different,
    return isosceles
  if all sides are different return scalene.

create helper method in order to verify if input triangle is valid. 
  create array that contain the three input elements.
  check if all values are greater than 0 
  and then sum the smallest values if their value is greater then the longest size then its a valid trianfle. 

=end 

def valid_triangle?(arr)
  (arr.all? {|num| num > 0}) && ((arr[0] + arr[1]) > arr[2])
end  

def triangle(num1, num2, num3)
  sides = [num1,num2,num3].sort

  if valid_triangle?(sides) && sides.all?(sides[0])
    :equilateral
  elsif valid_triangle?(sides) && sides.uniq.size < sides.size
    :isosceles
  elsif valid_triangle?(sides) && sides.uniq.size == sides.size
    :scalene
  else
    :invalid   
  end
end  

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid