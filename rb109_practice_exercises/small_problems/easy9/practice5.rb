=begin

Write a method that takes a string argument, and returns true if all of the alphabetic characters inside the string are uppercase, false otherwise. Characters that are not alphabetic should be ignored. 

input is a string. Can be one character long or multiple words. 
output is a boolean object. It should return true if all of the characters of the input string are uppercased. False otherwise. 

it should also return true if the string is empty. 

non alphabetic character do not count. 

thoughts: 

there are multiple ways to approach this problem. 
we can split the input string into characters and iterate through it. making sure that all characters are uppercased by comparing each character of the string with a constant value containing all uppercased alphabetic characters. 

Another approach would be using =~ method in order to check if the character meets the criteria set by the regexp /[A-Z]/

in both cases we can complete the comparison by using conditional statements. 

en even more straight forward method would be comparing the input string with the uppercased version of itself....keep it simple stupid.
=end

def uppercase?(str)
  str == str.upcase
end  

  

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true