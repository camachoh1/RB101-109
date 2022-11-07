=begin

Write a method that takes a string, transforms all but the last four characters into # and returns the new masked string.

input: a string of digits 
output: a string of digits with all digits masked but the last four. 

rules:

- if input string is one digit, return the single digit. 
- if input sring is empty, return an empty string. 
- in order to mask a string, it must be greater than 4 characters.

data structure: arrays

algorithm:

- remove the last 4 digits from the input string. 
- store in a separate array
- concatenate # multiplied by the remaining string size with the last four digits.

=end 

def maskify(str)
  return str if str.size <= 4 
  last_four_digits = str[-4..-1]
  "#{('#' * str[0...-4].size)}#{last_four_digits}"
end

p maskify("64607935616")
p maskify("1") == "1"

p maskify("") == ""