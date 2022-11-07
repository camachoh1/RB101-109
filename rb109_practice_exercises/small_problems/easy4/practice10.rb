=begin

Write a method that takes an integer, and converts it to a string representation, this time the method needs to represent positive or negative values. 

algorithm:

make use of the method written in the previous exercise.

If the input number is 0 return "0"

otherwise check wether the number is positive or negative.

if positive interpolate the return value of calling the #integer_to_string method with the #- prepended to the input number, (converting it into a negative integer) with the string "-" prepended to it.

otherwise only pass in the input integer into #integer_to_string interpolated with a "+" prepended to it.

=end

DIGITS = {0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'}

def integer_to_string(num)
  num_arr = num.digits.reverse
  num_str = ''

  num_arr.each do |num|
    num_str << DIGITS[num]
  end
  num_str
end


def signed_integer_to_string(num)
  return '0' if num == 0
  if num.negative? 
    "-#{integer_to_string(-num)}"
  elsif num.positive?
    "+#{integer_to_string(num)}"
  else
    integer_to_string(num)  
  end    
end  

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'