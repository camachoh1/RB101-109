=begin


method receives two strings of different lengths, determines the longest of the two and then concatenates short + long + short 

input: two strings of different lengths.
output: a string, result of concatenating the storter string with the longer string and the shorter string once again. 

rules: 

- strings can be of different lengths. 
- empty strings count as strings. 


algorithm: 

- check and compare string lengths. 
- assign longer string to the longer_str variable and short string to short_st variable. 
- once the long and short has been defined, perform concatenation of short + long + short. 

=end 

def short_long_short(str1, str2)
  str1.size < str2.size ? (long, short = str2, str1) : (long, short = str1, str2)
  short + long + short 
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"