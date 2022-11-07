=begin 

What is an anagram? Well, two words are anagrams of each other if they both contain the same letters. For example:

'abba' & 'baab' == true

'abba' & 'bbaa' == true

'abba' & 'abbba' == false

'abba' & 'abca' == false

Write a function that will find all the anagrams of a word from a list. You will be given two inputs a word and an array with words. You should return an array of all the anagrams or an empty array if there are none. For example:

input: a string and an array of strings. 
ouput: an array of strings containing every single anagram string. 

rules: 

- method returns an empty array if no anagrams are found. 
- return an arrays of strings containing every single string considered an anagram. 

data structures: arrays 

algorithm: 

- iterate through the input array.
- select every word from the input whose characters sorted alphabetically are the same as the sorted input string. 


=end

def anagrams(str, arr)
  result = arr.select {|word| word.chars.sort == str.chars.sort}
end





p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) == ['aabb', 'bbaa']
p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) == ['carer', 'racer']
p anagrams('laser', ['lazing', 'lazy',  'lacer']) == []


