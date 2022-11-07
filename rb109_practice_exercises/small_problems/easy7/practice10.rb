=begin

Write a method that returns the next to last word in the string passed to it as an argument. 

Words are any sequence of non-blank characters. 

you may assume that the input string will always contain at least two words. 

=end 

def penultimate(str)
  str.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'