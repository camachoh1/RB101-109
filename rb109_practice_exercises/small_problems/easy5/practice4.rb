=begin 

input: a string
output: a string where the first and last characters of each word are swapped.

rules: 

- words can contain at least one letter.
- input string will always contain at least one word. 
- a string is made of words and spaces. 

d: array.

algorithm:

First we need to split the input string into an array of words. 
- we need to iterate through the array of words and swap the character order for each specific word. 
  - this can be done using the map method using string concatenation and index access. 
turn result array into astring using join. 

=end

def swap(str)
  result = str.split.map do |word|
    if word.size == 1
      word
    else   
      word[-1] + word[1..-2] + word[0]
    end
  end 
  result.join(' ')
end     

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'