=begin

Complete the find next square method that finds the next integral perfect square after the one passed as a parameter. Recall that an integral perfect square is an integer n such that s

input: an integer
output: the next perfect square number after the input number -1 if input number is not a perfect square.

rules: 

- input is a non negative value.
- if input is a perfect quare number, return next perfect quare number else return -1 


algorithm: 

- create helper method to find wether a number is a perfect square .
check if input number is a perfect square 
if it is, add one to the input number until the return value is a perfect square. 
- if input number is not a perfec square, return -1.

=end 

def perfect_square?(num)
  sqr_root = Math.sqrt(num).to_i
  sqr_root**2 == num
end

def find_next_square(num)
  if perfect_square?(num)
    loop do
      num += 1
      return num if perfect_square?(num)
    end
  else 
    -1
  end
end

p find_next_square(121)