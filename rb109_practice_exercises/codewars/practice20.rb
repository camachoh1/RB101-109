=begin

Write a method that takes a string of one or more words, and returns the same string, but with all five or more letter words reversed. Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present. 

input: a string made of one or more words. 
output: same string but with each word that has more than 5 characters reversed. 

rules: 
- if the single word has more then 5 characters, return the word revrsed. 

- any word less than 5 characters, must stay the same
- words must be returned in the same order they appear in the string. 

data structures: arrays

algorithm: 

- split input string into an array of words. 
- iterate through the array of words
- if a word size is greater then 5 then reverse, else leave as is. 
- join the array of words back into a string. 

=end 

def spin_words(string)
  words_arr = string.split
  result = words_arr.map do |word|
    word.size >= 5 ? word.reverse! : word
  end
  p result.join(' ')
end

p spin_words("Hey fellow warriors") == "Hey wollef sroirraw"
p spin_words("This is a test") == "This is a test" 
p spin_words("This is another test") == "This is rehtona test"
p spin_words("test") == "test"
