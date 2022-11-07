=begin

continuing the previous exercise, this time the input string may have a leading + or - sign; if the first character is a + , your method should return a positive number; if its a - , your method should return a negative number. if no sign is given, you should return a positive number. 


algorithm:

since we only care about the first character in order to define wether a number is positive or negative, use a case statement to check the value at index 0 of the input string. 

if the character is '-' then prepend the #- operator to the invocation of the #string_to_integer created on the previous exercise. This will perform the transformation from string to integer and turn the return value of the method into a negative value.

Else if the input string starts with '+' prepend #+ to the call of the #string_to_integer method.

otherwise just call the string to integer method.
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

def string_to_signed_integer(str)
  case str[0]
  when '-' then -string_to_integer(str[1..-1])
  when '+' then +string_to_integer(str[1..-1])
  else     string_to_integer(str)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100