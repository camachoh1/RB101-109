=begin

Write a method that takes an array of strings and returns an array of the same string values, except with the vowels removed. 

input: an array of strings. 
output: same array with vowels removed. 

input array contains multiple strings. 
we need to remove the vowels from each string element that is part of the array. 

I know some string methods such as string delete and gsub which can help me remove the vowels from the strings. 

questions?

does the output need to be the same array as the input or a different one?
 based on the problem description, seems like it can be a new array. 

data structures: arrays 

algorithm:

create result array
iterate through input array, remove vowels from all elements and then pass the result into the result array. 



=end 



# def remove_vowels(arr)
#   result = arr.map do |el|
#     el.delete('aeiouAEIOU')
#   end
#   p result
# end

def remove_vowels(arr)
  arr.map do |string|
    string.gsub(/[aeiou, AEIOU]/, '')
  end
end    


p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']