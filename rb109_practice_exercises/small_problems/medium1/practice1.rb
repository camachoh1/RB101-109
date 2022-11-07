=begin

P: method rotates an array by moving the first element to the end of the array. the original array should not be modified. 

in order to rotate the elements from the input array, without affecting the orignal array. 

  we can use index n to access the necesary elements from input array. 
  create result array. 
  define the first element of the array by assigning the value of arr[0] to a variable. 
  define the remaining part of the array by assigning the range arr[1..-1] as value to a variable. 

  create result array and organize the variables to reflect the rotated order. 
  flatten the result array 
    
=end 

def rotate_array(arr)
  first = arr[0]
  remaining = arr[1..-1]
  rotated = [remaining, first].flatten
end
  
p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4] 