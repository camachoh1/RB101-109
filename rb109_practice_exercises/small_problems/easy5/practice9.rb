=begin

write a method that takes a string as argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use #squeeze 

input: a string with doubled characters. 
output: the same string with all consecutive characters collapsed into a single character. 

rules: 

output is a new string. 

algotithm:

- create result variable assign an empty string as value. 
- split the input string into an array of characters. 
- iterate through the array of characters.
- pass each character into result variable.
  if the current character is the same as the last character in result string, skip. 
=end 

def crunch(str)
  result = ''
  str.chars.each do |char|
    result << char unless result[-1] == char
  end
  result
end 

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''