=begin
Write a method that takes a string, and returns a new string in which every consontant character is soubled. Vowels, digits, and whitespaces should not be doubled. 

=end 

# def double_consonants(str)
#   result = ''
#   str.chars.each do |char|
#     if char =~ /[^A-Za-z, aeiou0-9 ]/
#       result << char 
#     else   
#     result << char << char
#     end 
#   end 
#   p result   
# end   

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(str)
  result = ''
  str.each_char do |char|
    result << char 
    result << char if CONSONANTS.include?(char.downcase)
  end
  result  
end   

p double_consonants('String') == "SSttrrinngg"
p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""