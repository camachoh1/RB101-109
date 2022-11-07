=begin

In the easy exercises, we worked on a problem where we had to count the number of uppercase and lowecase characters, as well as characters that were neither of those two. Now we want to go one step further. 

Write a method that takes a string, and the returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, an one the percentage of characters thas are neother. 

You may assume that the string will alwayc ontain at least one character. 

input: a string
output: a hash where the keys represent uppercase, lowercase and neither and the values the percentage of each appearing in the input string. 

rules: 

input string will always contain at least one character. 
- percentage values are expressed in floats
- spaces count as non alphabetic characters. 

data structure: arrays

algorithm:

initialize result hash 

split the input string into an array of characters. 
iterate through the array of characters.
check if each character is uppercase, lowercase or none.
if a character meets the requirement, then increase the value of the result hash by 1. 

on a seprarate method process the percentage calulation update the values with percentage values.


=end 

def letter_percentages(str)
  result  = {lowercase: 0, uppercase: 0, neither: 0}
  str_arr = str.chars
  arr_size = str_arr.size 

  str_arr.each do |char|
    if char =~ /[a-z]/
      result[:lowercase] += 1
    elsif char =~ /[A-Z]/
      result[:uppercase] += 1
    else
      result[:neither] += 1
    end
  end
  result.each do |k,v|
    result[k] = (v / arr_size.to_f) * 100
  end
end  

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }



