=begin 

given a string, replace every letter with its position in the alphabet. 

If anything in the text isnt a letter, ignore it and dont return it. 


input: a string 
output: a string of numbers representing the position of each character of the input string in the alphabet. 

rules: 

- ignore and do not return char if the char is non alphabetic
- every num char of the ouput string is separated by spaces. 
- return an empty string if all char in the input string are non alphabetic. 

- data structures: arrays 

algorithm: 

- creating a constant value for the alphabet. 
  - arr starting with empty space followed by alphabet

- split the input into an array of chars
- clean input string from spaces and non alphabetical chars
- replace the current char with the alphabet position (index).
- join the return into a string separated by spaces. 


=end

ALPHABET = ['', ('a'..'z').to_a].flatten

def alphabet_position(str)
  clean_str = str.downcase.delete('^a-z')
  clean_str
  position = clean_str.chars.map do |char|
    ALPHABET.index(char)
  end
  p position.join(' ')
end



p alphabet_position("The sunset sets at twelve o' clock.") == "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"
p alphabet_position("-.-'") == ""













=begin

input: a string
output: a string of numbers. each number representing the position of each character in the alphabet.

rules: 

- ignore any non alphabetic characters.
- if the input string is made solely of non alphabetic characters, return an empty string. 

data strucutes: arrays, hashes.

algorithm:

create alphabet hash, where the letters are keys and positions are values.

create result array.

split input strng into an array of characters

iterate through the array of characters, if current char exist in alphabet pass its position into the result array.

join result array into a string and return. 

=end 

# def alphabet_position(text)
#   result = []
#   count = 1
#   alphabet = ('a'..'z').to_a.each_with_object({}) do |letter, hash|
#     hash[letter] = count
#     count += 1
#   end

#   text.downcase.chars.each do |char|
#     if alphabet[char]
#       result << alphabet[char]
#     else
#       char
#     end
#   end
#   result.join(' ')
# end

# =end 