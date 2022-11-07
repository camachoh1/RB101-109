=begin

Complete the function that

accepts two integer arrays of equal length
compares the value each member in one array to the corresponding member in the other
squares the absolute value difference between those two values
and returns the average of those squared absolute value difference between each member pair.

inputs: two integer arrays 
output: an integer or float representing the average of the squared absolute value difference of each member pair. 

rules:

- numbers in array can be negative or positive. 
- return value can be an integer or float. 
- both arrays are the same size always. 


Examples
[1, 2, 3], [4, 5, 6]              -->   9   because (9 + 9 + 9) / 3
[10, 20, 10, 2], [10, 25, 5, -2]  -->  16.5 because (0 + 25 + 25 + 16) / 4
[-1, 0], [0, -1]                  -->   1   because (1 + 1) / 2


data structures: arrays 

algorithm: 

- initialize a local variable index initial value of 0
- create differences arr
- loop 
  - subtract the element at located at index for both arrays 
  and pass the return value into differences arr. 
  break out of the loop once index is equal to arr size. 
- calculate and return the average. 


=end

def solution(arr1, arr2)
  index = 0
  differences = []

  loop do 
  differences << (arr1[index] - arr2[index]).abs
  index += 1
  break if index == arr1.size 
  end
  
  p (differences.map {|num| num.to_f**2.abs}.inject(:+) / arr1.size)
end

p solution([1, 2, 3], [4, 5, 6]) == 9
p solution([10, 20, 10, 2], [10, 25, 5, -2]) == 16.5
p solution([-1, 0], [0, -1]) == 1
