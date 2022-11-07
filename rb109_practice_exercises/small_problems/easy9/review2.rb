=begin

Write a program hat prints out groups of words that are anagrams. 

input: an array of words.
ouput: multiple arrays containing groups of anagram words. 

rules:

- the ouput must be multiple arrays containing different words considered anagrams. 

data structures: arrays/hashes

algorithm: 

- create a new hash.
- iterate through the input array. 
- group words by wether they are anagrams or not.
- print each group.

=end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

# def group_anagrams(arr)
#   anagrams = arr.group_by {|word| word.chars.sort}
#   anagrams.each {|_,v| p v} 
# end

def group_anagrams(arr)
  anagrams = arr.each_with_object({}) do |word, hash|
    hash[word.chars.sort] = arr.select {|w| w.chars.sort == word.chars.sort}
  end
  p anagrams
end

group_anagrams(words)