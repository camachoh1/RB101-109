=begin

Given an integer n, find the maximal number you can obtain by deleting exactly one digit of the given number. 

input: an integer.
output: an integer, the maximun number that can be formed by removing a single digit from input number. 

rules:

- input number is minimum 2 digits long.
- if the minimum digit is repeated in input number, remove only one digit. 

data structures: arrays

algorithm: 

transform input integer into an array of digits.

iterate through the array of digits, remove the minimum digit value.

- if the minimum value is repeated more than once, remove duplicates. 

once minimum value has been removed, join the array back into an integer. 

=end 


def delete_digit(n)
  result = []
  digits_arr = n.to_s.chars

  if digits_arr.count(digits_arr.min) > 1
    result << n.to_s.squeeze
  else
    digits_arr.delete(digits_arr.min)
    result << digits_arr.join
  end
  result.join.to_i
end


p delete_digit(537901) #== 57901
p delete_digit(152) == (52)
p delete_digit(1001) == (101)
p delete_digit(10) == (1)