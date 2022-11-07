=begin

Write a function that accepts a 2d array and returns the location of the mine. The mine is represed as the integer 1 in th 2d array. Areas in the 2D array that are not the mine will be represented 0. 

the location return should be an array. where the firts element is the row index and the second element is the columnt of the bomb location. 

all 2d array passed into your function will be square (nxx) and there will be one mine in the array. 

input: a 2d array containing 0s and a single 1 representing the mine. 

output: an array with 2 values. firs value represnts the row index and the secon is the bomb location. 

rules: 

- all sub arrays can have minimum size of 2. 
- all 2d array contain at least one mine. 
- implicit: return an empty array if there is no mine. 

data structures: arrays

algorithm: 

- create a result array. 
- iterate through the 2d array. 
- pass in the index of the sub array that contains a mine into the result array.
- iterate through the sub arrays and pass the index in which the mine is located into our result array. 
=end 

def mine_location(arr)
  result = []
  arr.each_with_index do |sub_arr, index|
    result << index if sub_arr.include?(1)
    
    sub_arr.each_with_index do |element, index2|
      result << index2 if element == 1
    end
  end
  result
end

p mine_location( [ [1, 0, 0], [0, 0, 0], [0, 0, 0] ] ) == [0, 0]
p mine_location( [ [0, 0, 0], [0, 1, 0], [0, 0, 0] ] ) == [1, 1]
p mine_location( [ [0, 0, 0], [0, 0, 0], [0, 1, 0] ] ) == [2, 1]
p mine_location([ [1, 0], [0, 0] ]) == [0, 0]
p mine_location([ [1, 0, 0], [0, 0, 0], [0, 0, 0] ]) == [0, 0]
p mine_location([ [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 1, 0], [0, 0, 0, 0] ]) == [2, 2]
