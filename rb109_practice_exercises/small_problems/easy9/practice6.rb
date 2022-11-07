=begin

Write a method that takes a string as an argument, and returns an array that contins every word from the string, to wich you have appended a space and the word length. 

you may assume that words in the string are separated exactly by one space, and that any substring of non-space characters is a word. 

input is a string containing multiple words. 
output is an array of strings populated by the input strings with an space and the word length appended. 

the first instict I get when i see this problem, is using the method map in order to return the result array. 

The transformation pattern will be the word from the input sting interpolated with the string length at the end. 

in order to make this process work, we need to split the input string into an array of words. 

=end 

def word_lengths(str)
  str.split.map {|word| "#{word} #{word.length.to_s}"}
end 

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []