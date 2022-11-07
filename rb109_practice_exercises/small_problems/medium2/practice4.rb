=begin

Write a method that takes a string as an argument, and returns true if all parenthrsees in the string are properly balanced, false otherwise. To be properly balanced parentheses must occur in matching () pairs. 

inputs: a string

ouput: a boolean

rules: 

- method returns true if all parentheses pars are complete. Meaning they start with '(' and end with ')' false othwerwise. 

- nested parentheses count must also be balanced.

data structures: arrays

algorithm:

initialize a parentheses count variable. 
- split the string into an array of characters.
- iterate through the array.
- if the current char is '(' increment the counter by 1
- if the current char is ')' subtract 1 from the counter.
- at the end of the iteration, a balanced parentheses must return a count of 0.
- if the count is greater than or less than 0 then return false.
- else true. 

=end



def balanced?(str)
  count = 0
  str_arr = str.chars 

  str_arr.each do |char|
    count += 1 if char == '('
    count -= 1 if char == ')'
    break if count < 0
  end
  p count
  count == 0 ? true : false
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false