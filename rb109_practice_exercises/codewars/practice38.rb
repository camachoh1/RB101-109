=begin

Sort the given array of strings in alphabetical order, case insensitive.

rules: 

- the method should sort the array alphabetically without changing the case of each word. 


data structures: arrays

mental model:
- the array needs to be sorted alphabetically without changing the case of each word in the array.

algorithm:

- sort the strings in the array based on the order of each string downcased. 

=end 

def sortme(arr)
  arr.sort_by {|word| word.downcase}
end

  p sortme(["Hello", "there", "I'm", "fine"]) == ["fine", "Hello", "I'm", "there"]
p sortme(["C", "d", "a", "Ba", "be"]) == ["a", "Ba", "be", "C", "d"]
p sortme(["CodeWars"]) == ["CodeWars"]