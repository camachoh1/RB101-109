=begin

Re order the characters of a string, so that they are concatenated into a new string in "case-insensitively-alphabetical-order-of-appearance" order 
Whitespace and punctuation shall simply be removed

the input is restricted to contain no numerals and only words containing the english slphabet letters.

input: a string 
output: a string with all characters organized alphabetically with spaces and punctuation removed.

rules:

- if input string is empty, return an empty string.
- if input string is a space, return an empty string.
- non alphabetic characters are removed. 
- method is case insensitive

data structures: arrays

algorithm:

- remove all non alphabetic characters and spaces from input string.
- split the string into an array of characters
-sort the array.
join the array back into a string.

=end 

def alphabetized(str)
  return '' if str.empty?
  clean_str = str.delete('^A-Za-z')
  clean_str.chars.sort {|a,b| a.downcase <=> b.downcase}.join
end  

p alphabetized("The Holy Bible")
p alphabetized('EO')