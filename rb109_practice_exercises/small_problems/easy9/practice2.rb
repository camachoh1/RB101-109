=begin
A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. For example 44, 3333 are all double numbers. 444 and 334433 are not. 

Write a method that returns 2 times the number provided as argument, unless the argumen is a double number; double numbers should be returned as-is. 

transform input number into a string. 
split the string. 
define the center of the characters array. 
check if numbers from beginning to middle are the same as the numbers from middle to end.
if it is, then the number is considered a double number. 
if the string length is even the number is considered doubled and returned as is. 

else double the number. 

=end 

def twice(num)
  num_str = num.to_s
  middle = num_str.length / 2
  right_side = num_str[0..middle -1]
  left_side = num_str[middle..-1]
  
  if right_side == left_side && num_str.length.even?
    num
  else 
    num * 2
  end  
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10