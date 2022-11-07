=begin

Write a method which rakes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit. 

input: multi dimensional array. Each sub array contains a string and a number. 

output: an array containing strings, each string repeated the amount of times specified by the second element of each input sub array. 

 
we need to transform the input array into a single array.

crete a result array.

iterate through the input array. 
passing each sub array into the block. 
iterate through each sub array.
access the second element of each sub array and use it as calling object to times. 
pass the first element number of the array the number of times specified by the second object.  

=end 

# def buy_fruit(arr)
#   result = []
#   arr.each do |sub_arr|
#     sub_arr[1].times do
#       result << sub_arr[0]
#     end
#   end
#   result    
# end   

def buy_fruit(arr)
  arr.each_with_object([]) do |sub_arr, arr|
    fruit, quantity = sub_arr[0], sub_arr[1]
    quantity.times {arr << fruit }
  end   
end  

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]