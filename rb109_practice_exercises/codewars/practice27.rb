=begin

Write a function that will find all the anagrams of a word from a list. You will be given two inputs a word and an array with words. You should return an array of all the anagrams or an empty array if there are none. 

input: a string and an array of words. 
output: an array containing the words considered anagrams.

rules: 

- method should return an empty array if there are no anagrams included in the input array. 

data structures: arrays

algorithm: 

- iterate through the input array.
- select words that when sorted alphabetically, have the same characters as the input string. 

=end 

def anagrams(str, arr)
  arr.select {|word| word.chars.sort == str.chars.sort}
end  

p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) == ['aabb', 'bbaa']
p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) == ['carer', 'racer']
p anagrams('laser', ['lazing', 'lazy',  'lacer']) == []
