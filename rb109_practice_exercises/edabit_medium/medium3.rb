=begin

Create a function that returns an array of words into a coma separated list where the last word is separated by the word 'and' 

input: an array of strings
output: a string where words are separated by ',' the last word is separated by 'and'

rules: 
- if input array contains only one word, return a signle word. 
- if input array contains two words, delimit them with 'and' right away.
- if input array contains 3 or more words, delimit the first two words with a coma ',' and the last word with 'and'.
- nil values, empty arrays should return an empty string. 

data structures: Arrays

algorithm:

if array empty, return an empty string. 
clear input array of empty spaces.   
- split the array from 0..-2 in order to get the first words from the array delimited by comas. 
- create a string, interpolate the first part of the array, add 'and' and interpolate the last part of the array. 

=end 

def words_to_sentence(arr)
  return '' if arr == nil || arr.empty?
  return arr.join if arr.size == 1
    
  no_spaces = arr.select {|word| word.size > 1}
  if no_spaces.size == 2
    "#{no_spaces[0]} and #{no_spaces[1]}"
  elsif no_spaces.size > 2
  "#{no_spaces[0..-2].join(', ')} and #{no_spaces[-1]}"
  end
end  

p words_to_sentence(["one", "two", "three", "four"]) == "one, two, three and four"
p words_to_sentence(["one", "two", "", "four"]) == "one, two and four"
p words_to_sentence(["one"]) == "one"
p words_to_sentence(["one", "", "three"]) == "one and three"
p words_to_sentence(["one", "two", ""]) == "one and two"
p words_to_sentence([""]) == ""
p words_to_sentence([]) == ""
p words_to_sentence(nil) == ""