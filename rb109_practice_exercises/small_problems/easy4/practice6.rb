=begin

Write a method that takes an Array of numbers, and returns an array with the same number of elements, and each element has the running total from the original array. 

=end

#solution 1

# def running_total(arr)
#   sum = 0
#   arr.map do |num|
#     sum += num
#   end
# end    

#solution 2
# def running_total(arr)
#   sum = 0
#   arr.each_with_object([]) do |num, array|
#     array << sum += num
#   end
# end  

#solution 3

def running_total(arr)
  sum = 0
  arr.inject([]) do |sum_arr, num| 
  sum_arr << sum += num 
  end 
end  


p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32,  47, 67]
p running_total([3]) == [3]
p running_total([]) == []