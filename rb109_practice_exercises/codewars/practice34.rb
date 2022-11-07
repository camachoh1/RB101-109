=begin 

In this kata you are required to, given a string, replace every letter with its position in the alphabet. 

if anything in the text isntt a letter, ignore it and dont return it. 

input: a string.
output: a string of numbers representing the position of each letter in the alphabet, separated by spaces. 

rules: 

- non alphabetic characters are ignored.
- output string is a string of digits representing the position of each letter in the alphabet.
- notice that 'a' = 1 not 0.


data structures: arrays

algorithm: 

create constant variable for alphabet, starting with a space followed by the alphabet. 
- create result array
- remove all non alphabetic characters and downcase every character in the input string
- split the input string into an array of characters.
- iterate through the array of characters.
- find the index of the current character in the constant array and pass it into the result array. 
- join the string of integers, separated by a space. 

=end 

ALPHABET = ('a'..'z').to_a.unshift(' ')

def alphabet_position(str)
  result = []
  clean_str = str.downcase.delete('^a-zA-Z')
  str_arr = clean_str.chars
  
  str_arr.each do |char|
    result << ALPHABET.index(char).to_s
  end
  return "" if result.empty?
  result.join(' ')
end


p alphabet_position("-.-") == ""
p alphabet_position("The sunset sets at twelve o' clock.") == "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"