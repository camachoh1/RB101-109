=begin
Write a method that takes a string of digits and returns the integer version of the input string. Do not use built in methods!  


algorithm: 
  split the input string into an array of characters. 
  iterate through the array of characters and pass them into a helper method with a case statement that will return integer 1 if '1' , integer 2 if '2' and so on. 
  this will return an array of integers.
  next, in order to turn the array of integers into an actual number, we need to create a result variable, multiply result by 10 then add the current element from the array to it. return the value of result or simply use inject! 

=end

def string_to_integer(str)
  str_arr = str.chars
  int_arr = str_arr.map do |char|
    case char
    when '1' then 1
    when '2' then 2
    when '3' then 3
    when '4' then 4
    when '5' then 5
    when '6' then 6
    when '7' then 7
    when '8' then 8
    when '9' then 9
    when '0' then 0
    end
  end 
  int_arr.inject {|result, num| result * 10 + num} 
end         

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570