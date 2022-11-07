=begin

The vowel substrings in the word codewarriors are o,e,a,io. The longest of these has the length of 2. given a lowrcase string that has alphabetic characters only and no spaces, return the length of the longest voewl substring. vowels are any of aeiou


rules: 

- method returns the length of the longest vowel substring. 
- all characters are alphabetic
- method is case insensitive
- input string contains no spaces. 

data structures: arrays 

algorithm: 

- initialize constant variable vowels.
- get every single substring from the input string
- filter out any substring that contains any character not present in vowels constant. 
- return the longest vowel substring. 


=end 

VOWELS = %w(a e i o u)


def solve(str)
  counter = 0
  max_counter = 0 

  (0...str.size).each do |index|
    if VOWELS.include?(str[index])
      counter +=1
      if counter > result
        max_counter = counter
      end
    else
      counter = 0
    end
  end
  p result
end 

p solve("codewarriors") == 2

# def solve(str)
#   str.split(/[^aeiou]/).map(&:size).max
# end  


=begin 

input: a string
output: an integer representing the length of the longest vowel substring. 

rules:

- method only returns the lenght of the longest vowel substring. 
- all input string contain lowercase characters. 

data structure: arrays

algorithm:

- create vowels constant
- create result array in order to store all possible substrings.
- filter substrings array and only select substrings containing vowels.
- iterate through the vowel substrings array and return the size of the largest one. 

=end 

# VOWELS = %w(a e i o u)

# def solve(str)
#   str.split(/[^aeiou]/).map(&:size).max
# end  