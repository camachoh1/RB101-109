=begin

write a method that combines two arrays passed in as arguments, and returns a new array that contains all the elements from both array arguments, with the elements taken in alternation. 

you may assume that both input arrays are non-empty and that they have the same number of elements. 

input: two arrays
output: a single array with all elements taken in alternation. 

rules:

- both arrays are always non-empty

=end

# def interleave(arr1, arr2)
#   arr1.zip(arr2).flatten
# end

def interleave(arr1,arr2)
  result = []
  arr1.each_with_index do |element, index|
    result << element << arr2[index]
  end
  result
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']