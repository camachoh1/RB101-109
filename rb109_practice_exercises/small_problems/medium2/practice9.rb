=begin

Write a method that takes an Array as an argument, and sorts that array using the bubble sort algorithm as described. Note that you will be sorting in place, that is you will mutate the Array passed as an argument. You may assume that the array contains at least 2 elements. 

input: an array
output: a sorted array 

rules: 

- method should use the bubble sort algorithm in order to sort an array. 
- input array contains at least 2 elements. 
- method will check elements in pairs and compare them, if an element is greater than the next, then the elements exchange positions, else stay the same. 
- once the first element completed iterations, move to the next object and repeat the process. 
- method is a mutating method all changes will take place on current object. 

data structures: arrays

algorithm: 

create variables for current element and next element. 
initialize current element at 0 and next element at 1

loop 

compare current element with next element, if current element is greater than next element, swap places else stay the same. continue this process until all iterations are completed. 

once iterations with first element are completed, repeat the process with the next element. 
continue until the entire array is completed

=end 

def bubble_sort!(arr)
  loop do 
    swapped = false
    1.upto(arr.size - 1) do |index|
      next if arr[index - 1] <= arr[index]
      arr[index - 1], arr[index] = arr[index], arr[index - 1]
      swapped = true
    end
    break unless !swapped
  end
end

p array = [5, 3]
p bubble_sort!(array)
p array == [3, 5]