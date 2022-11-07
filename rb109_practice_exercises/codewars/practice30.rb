=begin

Write a method that takes a string as an argument and groups the number of times each character appears in the string as a hash sorted by the highest number of occurences.

the characters should be sorted alphabetically. 

you should ignore spaces, special characters and count uppercase letters as lowercase ones. 

input: a string 
output: a shash where the keys are the number of appearances and the values are an array containing the characters in the string that are being counted. 

rules:

non alphabetic characters are ignored. 
method is case insensitive. 


data structures: arrays/hashes

algorithm: 

- create result hash.
- split the input string into an array of characters.
- iterate through the array of character
- if a character is non alphabetic ignore.
- if a character is alphabetic, count the number of appearances of the current character in the input string. 
  assign the return value of this operation as keys to our results hash.
  and pass the current character into value array.
  if current char count is the same as previous char add the current character into the value array
  - else create a new key with the char count and pass current char into value array. 

  - sort the hash based on key size and sort each value alphabetically.

=end 

# def get_char_count(str)
#   clean_str_arr = str.downcase.chars.sort.select {|char| char =~ /[a-z0-9]/ }

#   frequency = clean_str_arr.uniq.group_by {|char| clean_str_arr.count(char)}
# end

def get_char_count(str)
  result_hash = {}
  clean_str_arr = str.downcase.delete('^a-z0-9').chars

  clean_str_arr.sort.uniq.each do |char|
    if result_hash.has_key?(clean_str_arr.count(char))
      result_hash[clean_str_arr.count(char)] << char
    else
      result_hash[clean_str_arr.count(char)] = [char]
    end
  end
  result_hash
end

p get_char_count("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]}
p get_char_count("Hello. Hello? HELLO!!") == {6=>["l"], 3=>["e", "h", "o"]}
p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}
p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]}
p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}
