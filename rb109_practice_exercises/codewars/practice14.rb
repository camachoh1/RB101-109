=begin

Create a method that receives two strngs as input one is made of characters in random order the other one is a word.

your method should return true if a portion of the first string can be rearanged to match str2 otherwise returns false.

input: two strings 
ouput: boolean. True if if the random ordered string can be rearanged to match str2. false otherwise.

rules:

- all input strings are made of lowercased alphabetical chars.
- random string contains characters that are not present in str2. 
- non alphabetical chars wont be included. 

data structure: arrays 

mental model:

we need to split the first input string into chars.
filter out unwanted charactes and sort it alphabetically. 

algorithm: 

- split the first input string into an array of characters. 
- iterate through the array of characters and filter out any character that is not present in the seconds string.
  - challenges: random string may contain more than one element that is present in the second string. example('scriptingjava','javascript' )
  filter extra chars by passing each char from the filtered str1 into a result array unless the count of the current char in the result array is equals to the char count in second arr. 
- sort the second string alphabetically
- sort the first string alphabetically 
- compare them, return true if the strings match false otherwise. 



=end

def scramble(str1, str2)
  result = []
  str1_arr = str1.chars.select {|char| str2.include?(char)}.sort
  str1_arr.each do |char|
    result << char unless result.count(char) == str2.count(char)
  end
  result == str2.chars.sort
end

p scramble('rkqodlw', 'world') == true
p scramble('katas', 'steak') == false
p scramble('rkqodlw','world') == true
p scramble('cedewaraaossoqqyt','codewars') == true
p scramble('katas','steak') == false
p scramble('scriptjava','javascript') == true
p scramble('scriptingjava','javascript') == true


# rules:

# - only lower case letters will be used. no punctuation or digits will be included.


# input: two strings
# output: a boolean

# data structures: arrays

# algorithm:

# - split both input strings into arrays and sort them alphabetically.
# check if the array containing characters from string 1 contain the same characters as string 2.

# =end

# # def scramble(str1, str2)
# #   result = []
# #   str1_arr = str1.chars
# #   str2_hsh = str2.chars.each_with_object(Hash.new(0)){|char, hash| hash[char] += 1}

# #   str1_arr.each do |char|
# #     result << char unless result.count(char) == str2_hsh[char]
# #   end
# #   result.sort.join == str2.chars.sort.join
# # end


