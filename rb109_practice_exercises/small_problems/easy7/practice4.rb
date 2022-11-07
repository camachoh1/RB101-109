=begin 

Write a method that takes a string as argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged. 

input: a string
output: the same string but with all uppercased characters now downcase and all downcase characters are uppercase. 


split input string into an array of characters.
iterate through the array of character. 
validate if the current character is uppercase.
  create helper method in order to verify.
if character is uppercase then downcase. 
if downcase then upcase. 
else leave as is
=end 

# def upcase?(char)
#   char.upcase == char
# end


# def swapcase(str)
#   result = str.chars.map do |char|
#     if upcase?(char)
#       char.downcase
#     elsif upcase?(char) == false
#       char.upcase
#     else
#       char
#     end
#   end
#   result.join
# end     

def swapcase(str)
  result = str.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  result.join
end   

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'