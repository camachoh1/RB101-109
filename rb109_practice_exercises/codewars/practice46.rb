=begin

In this simple Kata your task is to create a function that turns a string into a Mexican Wave. You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up.


Rules
    1.  The input string will always be lower case but maybe empty.
2.  If the character in the string is whitespace then pass over it as if it was an empty seat.

input: a string 
output: an array of strings.

rules: 

- if the input is an empty string return an empty array.
- input will always be made of lowercased letters or empty. 
- method ignores spaces.

data structures: arrays

algorithm: 

- split input string into an array of chars.
- iterate through the array of chars with index. 
- index is going to represent the ending point for the first slice used in order to build the result string. 

- upcase the string at different index and pass them into a result arr.

=end

def wave(str)
  result = []
  str_arr = str.chars

  str_arr.each_with_index do |char, index|
    next if char == ''
    result << str[0...index] + char.upcase + str[index + 1..-1]
  end
  result
end


p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]
p wave("") == []
p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]
p wave(" gap ") == [" Gap ", " gAp ", " gaP "]
