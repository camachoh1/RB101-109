=begin

write a method that returns true if its integer argument is palindromic, false otherwise. A palindromic number reads the same forwards and backwards.


input: an integer
output: a boolean. True if input number is palindromic, false otherwise. 

rules: 

-sigle digits are considered palindromes. 
palindromes are read the same forward and backwards. 

=end

def palindromic_number?(num)
  num.digits == num.digits.reverse
end  

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true