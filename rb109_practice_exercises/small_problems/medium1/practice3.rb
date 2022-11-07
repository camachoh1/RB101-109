=begin

Write a method that taks an integer as argumenr, and returns the maximun rotation of that argument. 

input: an integer
output: an integer wich is the maximun rotation of the original number. 


first assign the value of num to a variable called rotate. 
initialize a variable with the value of num.size. 
while n > 0
  assign the return value of rotate_rightmost(rotate, n) as value to rotate.
  subtract 1 to n 
  return rotate. 

=end


def rotate_array(arr)
  first = arr[0]
  remaining = arr[1..-1]
  rotated = [remaining, first].flatten
end

def rotate_rightmost_digits(num, n)
  num_arr = num.to_s.chars
  to_be_rotated = num_arr[num_arr.size - n..-1]
  result = num_arr[0...num_arr.size - n] + rotate_array(to_be_rotated)

  result.join.to_i
end

def max_rotation(num)
  n = num.to_s.size 
  rotation = num
  while n > 1
    rotation = rotate_rightmost_digits(rotation, n)
    n -= 1
  end
  rotation 
end  


p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 
p max_rotation(8_703_529_146) == 7_321_609_845
  