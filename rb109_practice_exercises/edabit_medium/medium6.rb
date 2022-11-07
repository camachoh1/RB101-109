=begin

An isogram is a words that has o duplicate letters. create a function that takes a string and returns either true or false depending on wether or not its an isogram. 

input: a string
output: a boolean. true if the string is an isogram, else false. 

rules: 

- method is not case sensitive. 
- assume all input words are valid strings. 
- an isogram is a string that contains not repeated words. 

algorithm: 

extract all unique characters from the input string and compare them with the input string. if the input sting has repeated characters the method should return false. 

=end 

def is_isogram(str)
  str.downcase.chars.uniq.join == str.downcase 
end  

p is_isogram("Algorism") == true

p is_isogram("PasSword") == false
# Not case sensitive.

p is_isogram("Consecutive") == false