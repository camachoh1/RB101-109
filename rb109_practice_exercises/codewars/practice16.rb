=begin

An anagram is the result of rearranging the letters of a word to produce a new word

Note: anagrams are case insensitive.

Complete the function to return true if the two arguments given are anagrams of each other; return false otherwise.

input: two strings
ouput: a boolean value. true if the two input strings are anagrams of each other, false othrwise. 

rules:

method is case insensitive. 
- return true if the two strings are anagrams of each other.
false otherwise. 

data structures: arrays

algorithm:

split both input strings into an array of characters, sort both of them alphabetically.
- compare if the two sorted arrays are equal.
=end

def is_anagram(str1,str2)
  str1.downcase.chars.sort == str2.downcase.chars.sort
end

p is_anagram('Creative', 'Reactive') == true
p is_anagram("foefet", "toffee") == true
p is_anagram("Buckethead", "DeathCubeK") == true
p is_anagram("Twoo", "WooT") == true
p is_anagram("dumble", "bumble") == false
p is_anagram("ound", "round") == false
p is_anagram("apple", "pale") == false
