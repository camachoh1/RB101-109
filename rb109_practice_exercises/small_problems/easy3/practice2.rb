=begin

Writer another method that returns true if the string passed as an argument is a palindrome, false otherwise This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters.

input: a string, it could contain numbers, and non-alphanumeric characters. As well as uppercase and lowercase letters. 

output: a boolean value, true if the input string is a palindrome, false otherwise. 

rules: 

method is case-insensitive, meaning if Madam is the input string, true should be return since the word is a palindrome regardless of the case. 

- all non-alphanumeric characters must be ignored.
- strings can be made of numbers and letters. 

data structure: arrays? we could transform the string into an array of characters or we could also apply the operation directly on the string. 

algorithm:

downcase the input string in order to make the method case-insenitive. 
- remove spaces and non alphanumerical characters.
- check if the string is a palindrome. 

=end

def real_palindrome?(str)
  clean_str = str.downcase.gsub(/[^0-9a-z]/i,'')
  clean_str == clean_str.reverse
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true         
p real_palindrome?("Madam, I'm Adam") == true 
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false