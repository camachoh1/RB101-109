=begin

Complete the solution so that it splits the input string into pairs of two characters. if the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore.

input: a string
outout: an array made of pairs of substrings from input string. if input string is off append '_' .

rules: 

- if input string is empty, return an empty array. 
- if input string is odd append '_'

data structure: arrays

algorithm: 

- check wether the input string has an even or odd number of characters. 
- if odd append '_' 
- split the string into an array of substrings with 2 characters in length. 

=end 

def solution(str)
  str << '_' if str.chars.size.odd?
  str.chars.each_slice(2).to_a.map(&:join)
end

p solution('abc') == ['ab', 'c_']
p solution('abcdef') == ['ab', 'cd', 'ef']
p solution("abcdef") == ["ab", "cd", "ef"]
p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
p solution("") == []
