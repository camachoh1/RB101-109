=begin
Find the longest substring in slphabetical order. 
There are test with strings up to 10k characters so your code will need to be efficient. The input will only consist of lowercase characters and will be at least one letter long. 
If there are multiple solution,s return the one that appears first. 


input: string
output: the longest substring in alphabetical order. 

rules: 

- method returns the logest substring that is sorted in alphabetical order. 
- input string can be one character long. 

data structures: arrays 

algorithm: 

- create a results array
- break the input string into chars
- iterate through the array of chars
- if the current char is greater than the last char of the last string in the array append the current char to it 
- else add the char to the results array.
- return max value by length. 
 

=end 




def longest(str)
  result = []
  str_arr = str.chars

  result << str_arr.shift

  str_arr.each do |char|
    char >= result[-1][-1] ? result[-1] += char : result << char
  end 
  result.max_by {|substr| substr.size}
end

# def longest(str)
#   substrings = str.chars.slice_when { |a, b| a > b }.to_a
#   p substrings
#   substrings.max_by(&:size).join
# end




p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') == 'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') =='fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'





