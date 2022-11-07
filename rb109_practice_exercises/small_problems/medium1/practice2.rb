=begin

Write a method that can rotate the las n digits of a number.
Note that rotating just 1 digit results in the original number being returned. 
You may assume that n is always a positive integer. 

input: two integers one represents the number of digits that need to be rotated from the first input integer. 

output: the first integer argument with n digits rotated. 

we are rotating the last n digits. 

example 1213, 2 -> 1231

first turn the integer into a string. 
split the string into an array of characters. 

select elements to be rotated and passed them into rotate array method. 

join return value of rotate array with the rest of the array of characters in return array. 

=end 

def rotate_array(arr)
  first = arr[0]
  remaining = arr[1..-1]
  rotated = [remaining, first].flatten
end

# def rotate_rightmost_digits(num, n)
#   num_arr = num.to_s.chars
#   to_be_rotated = num_arr[num_arr.size - n..-1]
#   result = num_arr[0...num_arr.size - n] + rotate_array(to_be_rotated)

#   result.join.to_i
# end

def rotate_rightmost_digits(number, digit)
  rotated = number.digits.reverse
  rotated << rotated.delete(rotated[-digit])
  rotated.join.to_i
end


# def rotate_rightmost_digits(num,n)
#   all_nums = num.to_s.chars
#   all_nums[-n..-1] = rotate_array(all_nums[-n..-1])
#   all_nums.join.to_i 
# end   
p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917