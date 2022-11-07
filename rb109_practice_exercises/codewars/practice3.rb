=begin

complete the soltion so that it returns the number of times the search text is found within the full_text.

input: two strings, a multi character string and a search target.
output: an integer representing the number of times the search target appears in the input string.

rules: 

- method should return an integer representing the number of times the search target appears in the input string. 

- search target can be a substring from the input string that could be one character long. 

data structures: arrays 

mental model: 

This method should find the number of times a specific substring appears in the input string. 
  the best way to achieve this would be by getting every single substring from the input string. and matching the search target with each substring. 

  algorithm: 

  - create a substrings array. 
  - get every single substring from the input string using nested iteration and ranges to define start and end point of each substring. 
  - iterate through the substrings array and count the appearances of the search string. 


=end 

def solution(str, search)
  substrings = []
  count = 0
  (0...str.size).each do |initial_point|
    (initial_point...str.size).each do |end_point|
      substrings << str[initial_point,end_point]
    end
  end
  substrings.count(search)
end

p solution('abcdeb','b') == 2
p solution('abcdeb', 'a') == 1
p solution('abbc', 'bb') == 1






=begin 
rules: 

count the number of instances the search text or second parameter appears in the input string.

- a substing can be a single character long. 

data structure: arrays

algorithm: 

- create a result array containing all substrings
- loop
- create variables to count the endpoint of the given string and the slicing point. 
- pass all substrings starting from 0 up to end point into result array.
- increment end point by one stop iterating once endpoint has the same value as the string size. 
- once all substrings are passed into result array, slice the first character from the string.
- increase slice by 1 
- repeat step 3 
- repeat step 4 until string empty.
- break out of the loop and count the appearances of the search text on result array. 

- 
=end

# def solution(str, search_str)
#   all_substrings_arr = []
  
# loop do

#   slice = 0
#   end_point = 0
#   break if str.size == 0

#   while end_point < str.size 
#     all_substrings_arr << str[0..end_point]
#     end_point += 1
#   end
#     str.slice!(0)
#     slice += 1
#   end 
#   all_substrings_arr.count(search_str)
# end  

# def solution(str, search_str)
#   p str.scan(search_str)
# end