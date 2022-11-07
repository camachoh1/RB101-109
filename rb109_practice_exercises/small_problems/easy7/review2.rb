=begin 

Write a method that takes a string as an argument, and returns a new string that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

input: a string
output: a string in with a staggered capitalization scheme. 

rules:

method should not change the casing of a non alphabetic character. but still count as a character when switching between upper and lowecase.

- spaces are considered non alphabetical characters.

data structures: arrays

algorithm:

- split the input string into an array of characters.
- iterate through the array of characters.
- if a letter needs to be uppcased, upcase, else leave it alone.
- non alphabertical characters must be ignored. 

=end 

def staggered_case(str)
  result = ''
  needs_upper = true
  str.chars.each do |char|
    if char =~ /[a-zA-Z]/
      if needs_upper 
        result += char.upcase
      else 
        result += char.downcase
      end
      needs_upper = !needs_upper
    else 
      result += char
    end
  end
  p result
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'