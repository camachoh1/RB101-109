=begin

You are given an array (which will have a length of at least 3, but could be very large.) containint integers. 
The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer n. write a method that takes the array as argument and returns this outlier n. 

input: an array of integers.
output: an integer.

rules: 

- method should return the 'oulier' which is the only integer that has a different quality than the other integers in the input array. for example if all integers in the array are even, the outlier is odd and viceversa.

- the array will always have a minimum length of 3. 

- the input array will also contain negative integers.

data structures: arrays.

algorithm:

- check every element in the input array by iterating through the array and filtering out the even and odd integers into a results array. outlier, will stay in original array if it does not meet the requirements. 
compare the two array and return the difference.
- if all elements from the array are equal meaning all are even or odd, means that there is no outlier. 
- else return the outlier.



=end 

def find_outlier(arr)
  result = []
  arr.each do |num|
    result << num if num.even?
  end
  
  if result.size > 1
    outlier = arr - result
    outlier[0]
  else
    result[0]
  end 
end

p find_outlier([2, 4, 0, 100, 4, 11, 2602, 36]) == 11 

p find_outlier([160, 3, 1719, 19, 11, 13, -21]) == 160 
