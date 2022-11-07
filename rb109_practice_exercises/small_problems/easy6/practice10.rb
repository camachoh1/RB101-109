=begin

Write a method that takes a positive integer n, as argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle(the diagonal side in the images below) should have one end at the lower-left of the triangle and the other at the upper right. 

algoritm

in order to create the triangle, we need to multiply the string * by the number of an increasing counter. 
in order to make the tiangle point right, we need to recreate the triangle shape with spaces.
the spaces are going to be the same value as the input number. 

loop

puts the value of multiplying spaces by the input number concatenate this with * multiplied by the value of the counter starting on 1.
decrease the value of spaces and increase the value of count. 
break once count has the same value as the input number. 

=end 

def triangle(num)
  count = 1 
  loop do 
    puts ' ' * count + '*' * num
    num -= 1 
    count += 1
  break if num == 0
  end 
end

triangle(5)