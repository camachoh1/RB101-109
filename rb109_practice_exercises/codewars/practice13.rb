=begin

Write a method that takes an array of words. 

You must concatenate the nth letter from each word to construnct a new word which should be returned as a string where n is the position of the word in the list.

input: an array of words.
output: a string made of the nth characters of each word from the input array.

rules: 

- return an empty string if input array empty
- assume every word will have enough letters to make the output word.
- array contains the same number of elements as the output string length.

data structures: arrays

algorithm:

- create result string variable.
- iterate through the array of words with index.
- pass the character located at the index number of the current word into result string.

=end


def nth_char(words)
  result = ''

  words.each_with_index do |word, index|
    result << word[index]
  end
  result
end


p nth_char(['yoda', 'best', 'has']) == 'yes'
p nth_char([]) == ''
p nth_char(['X-ray']) == 'X'
p nth_char(['No', 'No']) == 'No'
p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) ==  'Codewars'
