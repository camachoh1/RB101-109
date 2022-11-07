=begin 
Write a method that takes a positive integer or zero, and converts it to a string representation. 

Algorithm:

Initialize a constant containing a hash where the keys are integers and the values are the string representation of the key.

initialize a result variable to an empty string

Split the input integer into digits.

iterate through the digits and push the values of the hash (string digits) into the result string.

return the result string.


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

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'