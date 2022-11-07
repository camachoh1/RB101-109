=begin

Given a string of integer, return the number of odd numbered substrings that can be formed 

input: string representing a numerical vaule. 
output: integer representing the number of odd-numbered substrings found in input string. 

rules: 

- input string can be any size 
- input string will contain numbers only
- output only takes odd numbers into consideration
- string wont contain negative values. 

data structures: arrays

algorithm:

- get every single substring from input string. 
- store sub strings into result array
- iterate through substrings array
- select substrings whose numerical value is odd.
- count the number of odd substrings. 

=end 

def solve(str)
  sub_strings = []

  loop do
    break if str.size == 0
      ending_point = 0
    while str.size - 1 >= ending_point
      sub_strings << str[0..ending_point]
      ending_point += 1
    end
    str.slice!(0)
  end 
  sub_strings.select {|sub_str| sub_str.to_i.odd?}.size
end