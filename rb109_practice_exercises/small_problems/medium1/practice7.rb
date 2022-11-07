=begin

Write a method that takes a sentence string as input, and returns the same string with any sequence of words

'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

input = a string.
output: a string with all word representations of numbers replaced by string digits. 

rules: 

- all word representations of digits are replaced by string digits. 
- non alphabetical characters are ignored. 

data strincture: hash

algorithm:

- create number words hash. Where the keys are the word representation of numbers and the  values are the string digits. 

- split input string into an a rray of words. 
- iterate through the array of words and replace every word that matches the key from number_words with the values (string digit)
  - ignore non alphabetical characters when replacing a word. 

=end

NUM_WORDS = {'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7', 'eigth' => '8', 'nine' => '9'}

def word_to_digit(str)
  NUM_WORDS.keys.each do |word|
    str.gsub!(/\b#{word}\b/, NUM_WORDS[word])
  end
  str  
end  

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'