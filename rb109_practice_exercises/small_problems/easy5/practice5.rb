=begin

Given a string that consist of some words (all lowercased) and an assorment of non alphaberic characters, write a method that returns that string with all of the non-alphabetic characters relaced by spaces. If one or more non-alphaberic characters occur in a row, you should only have one space in the result(the result should never have consecutive spaces). 

input: a string with letters and non-alphaberic characters.
output: the string with all non alphaberic characters removed.


a:

create a constant variable containing all alphabetic characters. 
create a result string variable assign an empty string as value.
split input string into an array of characters.
iterate through the array of characters and pass every character into result string. 
  - if char is non-alphaberic, pass in a space.
  - else pass in the char unless last element is a space. 

=end


ALPHABETIC_CHARS = ('a'..'z').to_a

def cleanup(str)
  result = ''
  str.chars.each do |char|
    if ALPHABETIC_CHARS.include?(char)
      result << char
    else 
      result << ' ' unless result[-1] == ' '
    end   
  end
  p result
end   

p cleanup("---what's my +*& line?") == ' what s my line '