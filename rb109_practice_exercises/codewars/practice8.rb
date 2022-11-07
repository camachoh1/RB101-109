=begin

given a number, return the maximun number that could be formed from the digits of the number given. 

input: an integer.
output: an integer which represents the maximun number that can be created from the digits of the given number. 

rules:

only natural numbers can be passed into the method.

- digit duplications cloud occur, so also consider it when forming the largest.

data structres: arrays

algorithm: 

split the input number into an array of digits. 
re arrange the number and pass each permutation into a permutations array.
select the permutiation with the highest value.
transform array back into an integer.

=end 

def max_number(num)
  digits = num.to_s.chars
  max_num = digits.permutation.max
  max_num.join.to_i
end

p max_number(213)