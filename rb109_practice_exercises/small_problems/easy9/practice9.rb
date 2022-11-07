=begin

Write a method that detemined the mean(average) of the three scores passed into it, and returns the letter value associated with that grade. 

Tested values are all between 0 and 100. There is no need to check for negative values or greater than 100. 

input: three integers representing grades. 
output: a string representing letter grade. 

first we need to calculate the average by adding the three input values and divide by the total number in the set. 

then we need to compare the average value with the grading criteria. 

in this case we can use a conditional statement as well as a case statement in order to check the score and return the required letter grade. 

=end 

def get_grade(num1,num2,num3)
  average = (num1 + num2 + num3) / 3
  
  if (90..100).include?(average)
    'A'
  elsif (80..90).include?(average)
    'B'
  elsif (70..80).include?(average)
    'C'
  elsif 
    (60..70).include?(average)
    'D'
  else 
    'F'    
  end  
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"