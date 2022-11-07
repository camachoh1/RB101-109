=begin

Write a method that receives two portions of a path and joins them. The portions will be joined with / separator. there could be only one separator and if it is not present it should be added. 

notes: try not to solve this challenge using only if-else conditions. 

rules:

- method receives two input strings. 
- both should be joined by '/' 
- it should only be one '/' per ouput. meaning if any of the input strings already includes '/' it should be removed. 
- assume the input is always a non empty string.

data structures: arrays

algorithm:

- add both input strings in an array of characters. 
- remove non alphabetic characters.
- join the input string using '/' as delimiter. 

=end

def join_path(str1, str2)
  strings = [str1, str2]
  strings.map {|string| p string.gsub(/[^A-Za-z0-9-]/,'')}.join('/')
end  

join_path("portion1/", "portion2")