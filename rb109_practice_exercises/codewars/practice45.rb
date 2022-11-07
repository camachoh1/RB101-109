=begin 

Where's my parent?
6 kyu
Mothers arranged a dance party for the children in school. At that party, there are only mothers and their children. All are having great fun on the dance floor when suddenly all the lights went out. It's a dark night and no one can see each other. But you were flying nearby and you can see in the dark and have ability to teleport people anywhere you want.

Legend:
-Uppercase letters stands for mothers, lowercase stand for their children, i.e. "A" mother's children are "aaaa".
-Function input: String contains only letters, uppercase letters are unique.

Task:
Place all people in alphabetical order where Mothers are followed by their children, i.e. "aAbaBb" => "AaaBbb".



inputs: unordered string
output: sorted string where every lowercase letter follows the uppercased version of itself. 


rules: 

- if the input string is empty return an empty string. 
- all input strings are made only of letters and uppercased chars are unique. 
- uppercase letters stand for mothers, lowercased letters stand for their children.

data structures: arrays

algorithm: 

- array of mothers
- arr of childern

iterate through both arrays 
  iterating through the array of mothers. 
  if the current char is equals to the children.
    append. 
=end 


def find_children(str)
  p str.chars.sort_by{|char| [char.downcase, char]}.join 
end
 


# def find_children(str)
#   mothers = str.chars.select {|char| char == char.upcase}.sort
#   children = str.chars.select{|char| char == char.downcase}.sort
  
#   mothers.each do |mother|
#     children.each do |child|
#       mother << child * children.count(child) if child == mother.downcase
#     end
#   end
#   mothers.join 
# end





p find_children("abBA") == "AaBb"
p find_children("AaaaaZazzz") == "AaaaaaZzzz"
p find_children("CbcBcbaA") == "AaBbbCcc"
p find_children("xXfuUuuF") == "FfUuuuXx"
p find_children("") == ""