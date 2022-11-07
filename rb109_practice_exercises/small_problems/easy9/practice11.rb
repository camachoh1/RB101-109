=begin

Given an array of strings, write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters in them but in a different order. 

input: an array of strings. 
output an array containing words from input array that are anagrams. 

we know that anagrams are words that contain the same letters but are arranged diferently. 
In order to find out if a string is an anagram, we need to check the character composition. 

The best way to do this is by sorting the string.
  This will organize the strings in alhabetical order. 
  
in order to get the desired output, the best data structure would be a hash. 
we will set the alphabetically sorted string as key and the value will be an array containing any other word considered an anagram. 

first we create a new hash.
sort the strings alphabetically
iterate through the words array and find the anagrams.
populate result hash with the alphabetically sorted strings as key and anagrams as values in an array.
=end 

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end 

result.each_value do |v|
  puts '----'
  p v      
end  