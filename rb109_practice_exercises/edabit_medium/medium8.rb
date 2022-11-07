=begin

An array is special if every index contains an even number and every odd index contains n odd number. Create a dunction that returns true if an array is special and false otherwise. 

input: an array 
output: a boolean value true if input array is special else false. 

rules:

- a special array is an array whose index numbers match their values. if index odd and value is odd and index even and value even then it is considered special. 

assume the input array will always be populated with at least two elements. 

data structures: arrays 

algorithm: 

iterate through the array and check wether the index value is even or odd, same for each value in the array. 
if every iteration of the array returns true, then it is a special array therefore return true, else false. 

=end

def is_special_array(arr)
  result = []
  arr.each_with_index do |num, index|
    if num.even? && index.even?
      result << num
    elsif num.odd? && index.odd?
      result << num
    else
      num
    end
  end
  result.size == arr.size 
end

p is_special_array([2, 7, 4, 9, 6, 1, 6, 3]) == true

p is_special_array([2, 7, 4, 9, 6, 1, 6, 3]) == true
p is_special_array([2, 7, 9, 1, 6, 1, 6, 3]) == false
p is_special_array([2, 7, 8, 8, 6, 1, 6, 3]) == false
p is_special_array([1, 1, 1, 2]) == false
p is_special_array([2, 2, 2, 2]) == false
p is_special_array([2, 1, 2, 1]) == true
p is_special_array([4, 5, 6, 7]) == true
p is_special_array([4, 5, 6, 7, 0, 5]) == true