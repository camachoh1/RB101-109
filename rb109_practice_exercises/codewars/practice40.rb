=begin

Given an array of integers, find the one that appears an odd number of times.

There will always be only one integer that appears an odd number of times.
Examples

[7] should return 7, because it occurs 1 time (which is odd).
[0] should return 0, because it occurs 1 time (which is odd).
[1,1,2] should return 2, because it occurs 1 time (which is odd).
[0,1,0,1,0] should return 0, because it occurs 3 times (which is odd).
[1,2,2,3,3,3,4,3,3,3,2,2,1] should return 4, because it appears 1 time (which is odd).

input: an array of positive and negative integers.
ouput: an integer representing the element from the array that appears an odd number of times in the input array.

rules: 

- there will aleaya be only one integer that appears an odd number of times in the input array.

- method should return the number that appears an odd number of times. 

- method can receive a single digit, assume the method never receives an empty array. 

data structures: arrays, hashes.

mental model:

create a frequency hash whose keys are the elements and the values are the number of appearances. return the key whose value is odd.

algotithm:

- create result hash
- iterate through the input array.
- assign each element as keys to the hash using each_with_object.
- increase the value of each key every time the key is repeated during iteration.

- iterate through the result hash and return the odd value.

=end 

def find_it(seq)
  freq = seq.each_with_object(Hash.new(0)) do |num, hash|
    hash[num] += 1
  end
  freq.each {|k,v| return k if v.odd?}
end

def find_it(seq)
  seq.each do |num|
    return num if seq.count(num).odd?
  end 
end


p find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]) == 5
p find_it([1,1,2,-2,5,2,4,4,-1,-2,5]) == -1
p find_it([20,1,1,2,2,3,3,5,5,4,20,4,5]) == 5
p find_it([10]) == 10
p find_it([1,1,1,1,1,1,10,1,1,1,1]) == 10