=begin

write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of character that are neither. 

input: a string. 
output: a hash that counts instances of lowercase, uppercase and non alphabetic characters. 

notes: 

if the input string is empty, do not count. 
numbers count as non alphabetic characters. 
spaces count as non alphabetic characters. 

create a new hash. 
split input string into charcters. 
iterate through the array of characters. 
  if char is equals to lowercase, lowercase +=1, apply the same concept to the other kind of characters. 

=end 

def letter_case_count(str)
  result = {lowercase: 0, uppercase: 0, neither: 0}
  str.chars.each do |char|
    if ('a'..'z').to_a.include?(char)
      result[:lowercase] += 1
    elsif ('A'..'Z').to_a.include?(char)
      result[:uppercase] += 1
    else 
      result[:neither] += 1
    end
  end
  result
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }