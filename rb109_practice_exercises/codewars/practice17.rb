=begin

Given a string of words, you need to find the highest scoring word.

Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.

You need to return the highest scoring word as a string.

If two words score the same, return the word that appears earliest in the original string. 

All letters will be lowecase. 

input: string containing multiple words
output: the string with the highest score. 

rules: 

- return the highest scoring word. 

- all letters will be lowercased letters.

- if two words score the same, return the word that appears first. 


data structures: arrays and hashes

mental model: 

create a hash will contain the values for each letter. 
iterate through each word in the words array and define their value by comparing each character word with the value of it in our values hash. 

algorithm:

- create a helper method that will contain our score hash.
- helper method will return the score for each word. 

main method: 

- split the input string into an array of words 
iterate through the array of words and return the word with the highest score. 


=end 


def score(string)
  counter = 0
  alphabet = ('a'..'z').to_a
  str_arr = string.chars
  result = 0

  score_hash = alphabet.each_with_object(Hash.new(1)) do |char, hash|
    hash[char] += counter
    counter += 1
  end

  str_arr.each do |char|
    result += score_hash[char]
  end
  result
end

def high(str)
  result = {}
  str_arr = str.split

  str_arr.each do |word|
    result[word] = score(word)
  end
  max_score = result.max_by {|word, score| score }
  
  p max_score[0]

end

p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the volcano') == 'volcano'
p high('take me to semynak') == 'semynak'
p high('aaa b') == 'aaa'











# def score(str)
#   score = 0
#   count = 1
#   score_hash = ('a'..'z').to_a.each_with_object(Hash.new(1)) do |letter, hash|
#     hash[letter] = count
#     count += 1
#   end

#   str.chars do |char|
#     score += score_hash[char]
#   end
#   score  
# end

# def high(words)
#   word_hash = words.split.each_with_object(Hash.new(0)) do |word, hash|
#     hash[word] = score(word)
#   end
#   word_hash.key(word_hash.values.max)  
# end

# input: a string of words.

# output: the highest scoring word from the input string. 

# rules: 

# - if two words score the same, return the word that appears earliest in the original string. 

# - all input strings will be lowercase.

# - each letter has a score based on their position in the alphabet. 

# data structures: arrays/hashes

# algorithm: 

# initialize scoreboard hash
# helper method
# - initialize scoring variable
#  - split each word into an array of characters.
# -iterate through the array of characters and collect score.
# return score.

# main method: select word with higher score

# =end