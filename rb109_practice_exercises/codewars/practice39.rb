=begin

Write a method that takes a string as input, and returns the first character that is not repeated anywhere in the string. 

As an additional challenge, upper and lowecase letters are considered the same character, but the function should return the correct case for the initial letter. 

if a string contains all repeating characters, it should return an empty string. 



input: a string
output: the only non repeated character from the input string. 

rules: 

- if multiple characters in the input string are repeated, return the one that appears first in the string. 

- return an empty string if all characters from the string are repeated 

- method is case insensitive meaning upper and lowecase chars are considered the same. But method should return the original case from the input string. 

data structures: arrays/hashes

mental model:

we need to split the string into characters and count the appearance for each character. its important to keep in mind that the method is case insensitive when counting characters but it should return the proper case. 

algorithm: 

- create helper method that returns a hash with that counts the appearances of each char in the string. 
  keys are the characters values the number of appearances.

- return the key that contains the minimum value of the hash. 
- if all values are equal return an empty string. 

if a letter is uppercase in the input, return the uppercased version.

=end 

def appearances(str)
  str_arr = str.downcase.chars
  str_arr.each_with_object(Hash.new(0)) do |char, hash|
    hash[char] += 1
  end
end

def first_non_repeating_letter(str)
  appearance = appearances(str)

  min_value = appearance.values.min
  min_appearance = appearance.select{|_,v| v == min_value}
  letter = min_appearance.keys.first

  if min_appearance.empty? || min_appearance.values[0] > 1
    return ''
  else 
    str.chars.each do |char|
      return char if char.downcase == letter
    end 
  end 
end

# def first_non_repeating_letter(str)
#   str.chars.each do |char|
#     return char if str.downcase.count(char.downcase) < 2
#   end
#   ''
# end

# p first_non_repeating_letter('a') == 'a'
p first_non_repeating_letter('stttrrrreess') == 'e'
# p first_non_repeating_letter('moonmen') == 'e'
# p first_non_repeating_letter('sTreSS') == 'T'
# p first_non_repeating_letter('') == ''
# p first_non_repeating_letter('aabbcc') == ''
