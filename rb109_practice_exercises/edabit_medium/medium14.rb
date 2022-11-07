=begin

Create a function that keeps pnly string with repeating identical characters. 

input: an array of strings.
output: an array containing only strings made of repeating identical characters.

rules: 

A string with a single character is trivially counted as a string with repeating identical characters.
if there are no strings with repeating ideantical characters return an empty array.

data structures: arrays

algorithm:

iterate through input array.
split each word into an arrays of characters.
iterate through the arrays of characters. 
if all the characters from the array of characters are the same, select else ignore. 
return array with repeating identical characters.

=end

# def identical_filter(arr)
#   chars_arr = arr.map(&:chars)
#   result = chars_arr.select do |sub_arr|
#     sub_arr.all?(sub_arr[0])
#   end
#   result.map(&:join)
# end

def identical_filter(arr)
  chars_arr = arr.map(&:chars)
  result = chars_arr.select do |sub_arr|
    sub_arr.uniq.size ==1
  end
  result.map(&:join)
end

p identical_filter(["88", "999", "22", "545", "133"]) == ["88", "999", "22"]

p identical_filter(["xxxxo", "oxo", "xox", "ooxxoo", "oxo"])== []

p identical_filter(["aaaaaa", "bc", "d", "eeee", "xyz"]) == ["aaaaaa", "d", "eeee"]