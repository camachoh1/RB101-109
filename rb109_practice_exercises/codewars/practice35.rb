=begin

You are going to be given an array of integers. your job is to take that array and find an index n where the sum of the integers to the left of n is equal to the sum of the integers to the right of n. if there is no index that would make this happen, return -1.

input: an array of integers.
output: the index number where the side to the left of n is equal to the side to the right of n. if no integer meets the requirements return -1.

rules: 

elements to the left of index 0 or to the right of index -1 are considered outside of the array thus an empty array must be returned at those index. 

- if the input array contains multiple answers return the lowest correct index. 

- empty arrays are equal to 0 in this problem. 

data structures: arrays. 

algorithm: 

- create a local variable n that will represent the index number of the elements in the array.

- define the elements located both left and right side of the current index number n. 

- if n is equal to 0 elements to the left of 0 or right of -1 are considered an empty array. 

- left side is defined by creating a range from 0 to -n and right side from n + 1 ..-1 

iterate through the ranges defined by left side and right side. 
- sum the values located at each index and return n if the sum of both values is equal. 
- else move to the next index by adding 1 to n. 
if no index 'n' meets the requirements, return -1

else return -1. 



=end 


# def find_even_index(arr)
#   n = 0
#   loop do 
#     if n == 0
#       left_side = []
#     else 
#       left_side = arr[0..(n-1)]
#     end

#     right_side = arr[(n + 1)..(arr.size - 1)]

#     left_sum = 0
#     right_sum = 0

#     left_sum = left_side.inject(:+) unless left_side.empty?
#     right_sum = right_side.inject(:+) unless right_side.empty?

#     if left_sum == right_sum
#       return n
#     else
#       n += 1
#     end

#     break if n == arr.size
#   end
#   -1
# end  

def find_even_index(arr)
  left_sum = 0
  right_sum = arr.reduce(:+)
  
  arr.each_with_index do |e, ind|
    right_sum -= e
    
    return ind if left_sum == right_sum

    left_sum += e
  end
  
  -1  
end

p find_even_index([1,2,3,4,3,2,1]) == 3
p find_even_index([1,100,50,-51,1,1]) == 1
p find_even_index([1,2,3,4,5,6]) == -1
p find_even_index([20,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) == 0
p find_even_index([10,-80,10,10,15,35,20]) == 6
p find_even_index(Array(1..100)) == -1
p find_even_index([0,0,0,0,0]) == 0
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3
p find_even_index(Array(-100..-1)) == -1