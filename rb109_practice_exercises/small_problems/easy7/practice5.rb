=begin

Write a method that takes a string as an argument, an returns a new string that contains the original value using a sataggered capitalization scheme in which ever other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase. 

split the input string into an array of characters. 
iterate through the array of characters. 

if character index is even, upcase else downcase. 

store swapcased string into result string. 

=end 

# def staggered_case(str)
#   result = ''
#   str.chars.each_with_index do |char, index|
#     result << char.downcase if index.odd?
#     result << char.upcase if index.even?
#   end
#   p result
# end 


def staggered_case(str)
  result = ''
  needs_upcase = true 
  str.chars.each do |char|
    if needs_upcase
      result += char.upcase
    else
      result += char.downcase
    end
  needs_upcase = !needs_upcase
  end 
  result 
end  

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'