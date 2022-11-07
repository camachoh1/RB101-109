=begin

Write a program that reads the content of a text file and then prints the longest sentences in the file based on number of words. Sentences may end with periods, exclamation points, or question marks. Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word. You should also print the number of words in the longest sentence. 

input: a text file. 
output: an integer representing the length of the longest sentence in the text file. 

rules: 
- sentences are delimited by '.', '!', or '?'.
- other non alphabetic characters such as '--' count as words. 
- any sequence of characters that are not spaces or sentence-ending character should be considered a word. 

data structure: arrays

algorithm: 

- open text file assign it as value to a local variable. 
- split the text file into an array of sentences, making sure splitting points are '.', '!', and '?'. 

- iterate through the sentence array and select the longest sentence. 
- reuturn the number of characters on the longest string. 

=end 

text = File.read("pg84.txt")
sentences = text.split(/\.|\?|!/)
longest_sentence = sentences.max {|a,b| a.length <=> b.length}.strip
words = longest_sentence.split.size
words

p longest_sentence
p"The longest sentence in this text file is #{words} words long"