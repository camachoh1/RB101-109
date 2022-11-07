=begin

you are given an array of integers, your task will be to count all pairs in that array and return their count. 


input: an array of integers.
output: an integer representing the number of pairs of repeated numbers in the input array. 

rules: 

- return 0 if the array is empty or if the array does not contain any pairs. 

- method only counts pairs of repeated numbers. 

data structures: arrays

mental model: 

This method should count only the number of pairs of repeated numbers. 
  - sorting the array and removing any element thats appears only once in the array is a good start in order to create the pairs. 

algorithm: 

- sort input array and filter out any non repeated elements. 
  - split filtered element in pairs and add them into a result array.
  - count elements in the result array. 
  return 0 if there are no pairs or array empty.



=end 

def pairs(arr)
  repeated_nums = arr.sort.select {|num| arr.count(num) > 1}
  pairs = repeated_nums.each_slice(2).to_a
  filtered_pairs = pairs.select {|pair| pair.size > 1}
  filtered_pairs.size
end


p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3 
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0








# def pairs(arr)
#   result = 0 
#   hash = Hash.new(0)
#   arr.each {|num| hash[num] += 1}
#   pairs =  hash.select {|k,v| v > 1}
  
#   pairs.each do |k,v|
#     result += v / 2
#   end 
#   result 
# end  
