=begin

Write a method that takes two array arguments in which each array contains a list of numbers, and returns a new array that contains the product of every pair of numbers that can be formed between the elements of the two arrays. The result should be sorted by increasing value. 

we can use array#product to solve this problem. 

=end 

# def multiply_all_pairs(arr1, arr2)
#   combinations = arr1.product(arr2)
#   result = combinations.map do |sub_arr|
#     sub_arr.inject(:*)
#   end  
#   result.sort
# end 

# create result array. 
# iterate through array1 
#iterate through array2
#multiply the numbers from arr2 by the numbers of arr1. 

def multiply_all_pairs(arr1, arr2)
  result  = []
  arr1.each do |num|
    arr2.each do |num2|
      result << num2 * num
    end
  end
  result.sort    
end  


=begin
the solution above shows that we can call each within the block of another each call. 
in this way we can iterate through two different collections at the same time. 
=end 

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]