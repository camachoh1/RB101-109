=begin

Write a methof that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters. 

define center point of strings. 
create a conditional statement:
  if string length even return center point + 1
  if string lenght odd, return center point. 

=end 

def center_of(str)
  middle = str.size / 2 
  str.size.odd? ? str[middle] : str[middle - 1..middle]
end  

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'