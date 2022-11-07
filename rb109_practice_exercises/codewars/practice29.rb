=begin

A string is considered to be in title case if each word in the string is either (a) capitalized or b considered to be an exception and put entirely into lowercase unless it is the first word, which is always capitalised. 

Write a function that will convert a string into a title case, given an optional list of exceptions (minor words). The list of minor words will be given as a string with each word separated by a space. Your function should ignore the case of the minor words string -- t shoyld behave in the same way even if the case minor word string is changed. 

input: two strings arguments. one containing the words that need to to be capitalized and the second argument will be the exceptions. 
output: will be the input string with each word capitalized except the ones included in the exceptions. 

rules:

if no exeptions given, return all words capitalized.
- if the input string is empty, return an epty string. 
- method has a constant parameter. 
- the first word is always capitalized. 
- 

data structures: arrays 

algorithm: 

- split the input string into an array of words.
- split the second parameter into an array of words.
- iterate through the first array of words.
  - if the word index is 0 then capitalize.
  - check wether the current word appears in exceptions if it does then downcase it. 
  - if its not then capitalize it. 
once iteration is completete, join the array of words into a string and return. 
- if both the input string and the exceptions are empty strings return an empty string.
- if no exceptions are passed in as arguments. return every word capitalized. 

=end 

def title_case(title, minor_words = '')
  return '' if title.empty?
  
  words_arr = title.downcase.split
  minor_words_arr = minor_words.downcase.split
  
  words_arr.each_with_index do |word, index|
    if index == 0
      word.capitalize!
    elsif minor_words_arr.include?(word)
        word 
    else 
      word.capitalize!
    end
  end.join(' ')
end

p title_case('') == ''
p title_case('a clash of KINGS', 'a an the of') == 'A Clash of Kings'
p title_case('THE WIND IN THE WILLOWS', 'The In') == 'The Wind in the Willows'
p title_case('the quick brown fox') == 'The Quick Brown Fox'
