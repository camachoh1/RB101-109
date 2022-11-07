=begin

Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring. 

algorithm: 

use the slice method and set a range starting from index 0 to the desired ending point. 
In this case, we will set up a variable starting at 1. This variable will represent the end point for slice. 
example: on the first iteration, it will start slicing from index0 to index 1 then it will be incremented 0 to 2 and so on until the variable value is the same as the input string size. 

each iteration will be passed into the result array. 

=end 


def leading_substrings(str)
  result = []
  end_point = 1
  while end_point < str.size + 1
    result << str.slice(0,end_point)
    end_point += 1
  end 
  p result
end   

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
