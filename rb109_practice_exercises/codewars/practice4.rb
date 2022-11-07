=begin

Consider the word "abode". We can see that the letter 'a' is in position 1 'b' in position 2. In the alphabet, 'a' and 'b' are also in positions 1 and 2. Notice also that 'd' and 'e' are in abode occupy their positions in the alphabet, which are positions 4 and 5. 

Given an array of words, return an array of the number of letters that occupy their positions in the alphabet for each word. 

inputs: an array of strings.
output: an array of integers, each integer representing the number of characters from each string whose position matches the position of the current character in the alphabet.

rules: 

- if no characters in the string match their position in the alphabet, return 0

- method is case insensitive

data structures: arrays 

mental model: 

we need to use nested iteration in order to solve this problem. first we need to iterate through each element from the input array and split each element into an array of characters in order to count the number of characters that meet the criteria stated by the problem. 

algorithm: 

- initialize constant variable alphabet
- create a resut array
- initialize a local variable counter with 0 as initial value. 
- iterate throught the input array
  split each word into an array of characters
  iterate through the array of characters with index.
  if the index of the current character is the same as the index of the current char in alphabet increase count by 1.

- pass in the count into the result array
- restart the count and repeat for each string in the array.
- return the result array. 

=end


ALPHABET = ('a'..'z').to_a

def solve(arr)
  result = []
  counter = 0 

  arr.each do |word|
    word.downcase.chars.each_with_index do |char, index|
      counter += 1 if index == ALPHABET.index(char)
    end
    result << counter
    counter = 0 
  end
  result  
end

p solve(["abode","ABc","xyzD"]) == [4,3,1]
p solve(["abide","ABc","xyz"]) == [4,3,0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"])== [6,5,7]
p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]






=begin

input: an array of strings
output: an array of integers representing the number of letters whose position in the input string match their position in the alphabet. 

rules: 

- if no letters of input string match their location in the alphabet, return 0.
- input contains uppercase and lowercase characters, no spaces.

data structures: arrays

algorithm:

create alphabet constant.
create result array
create counter variable.
iterate through input array.
- split each string into an array of characters.
-iterate through the array of characters
if the index of the current character matches the index of the current characters in alphabet constant, increase counter by 1. 
repeat process for every string, pass in the values of counter into result array and return. 



ALPHABET = ('a'..'z').to_a

def solve(arr)
  result = []
  arr.each do |str|
    counter = 0
    str.chars.each_with_index do |char, index|
      char.downcase!
      if index == ALPHABET.index(char)
        counter += 1
      end   
    end
    result << counter 
  end
  result
end  


=end 