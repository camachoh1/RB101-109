=begin

the input is a string of digits. Cut the string into chunks. a chunk is a substring of the size n. 

if a chink represents an integers such as the sum of the cubes of its digits is divisible by 2, reverse that chunk otherwise rotate it to the left by one position. put together the modified chunks and return the result as a string. 


input: a string of digits. 
output: a string of digits representing a substring of the input string whose size is specified by the second parameter. 
if the sum of the cubes of the digits of said substring is divisible by 2 reverse the substring else shift it to the left. 

rules: 

- if the size specified by second parameter is <= 0 or if the input string is empty, return an empty string. 
if the size specified by the second parameter is greater then the input string length, return ''

data structures: arrays. 

algorithm: 

- create helper method that returns a substring whose size is equals to the size of n. 
  - create result array
  - extract every substring from input string. 
  - select the substrings that have a size equals to the second parameter.

- create helper method to check wether the substring sum is valid.
  method should return a boolean.

- main method

  - iterates through the array of substrings 
    - if a substring sum is valid, reverse the substring
else shift the substring. 

  method returns an empty string if second parameter is greater than str or 0.
=end 

def substrings(str, sz)
  result = []
  (0...str.size).each do |initial_i|
    (initial_i...str.size).each do |endpoint|
      result << str[initial_i..endpoint]
    end
  end

  result.select do |substring|
    substring.size == sz
  end 
end

def valid_sum?(str)
  cubes = []

  str.to_i.digits.each do |num|
    cubes << num **3
  end
  cubes.inject(:+) % 2 == 0
end

def revrot(str, sz)
  return '' if sz > str.size || sz == 0
  result  = []

  substrings_arr = substrings(str, sz)
  substrings_arr.each do |substr|
    if valid_sum?(substr)
      result << substr.chars.reverse.join
    else
      result << substr[1..-1] + substr[0]
    end
  end
  "#{result.first}#{result.last}"
end


p revrot("123456987654", 6) == "234561876549"

# p revrot("1234", 0) == ""
# p revrot("", 0) == ""
# p revrot("1234", 5) == ""
# p revrot("733049910872815764", 5) == "330479108928157"
# p revrot("123456987654", 6) == "234561876549"
# p revrot("123456987653", 6) == "234561356789"
# p revrot("66443875", 4) == "44668753"
# p revrot("66443875", 8) == "64438756"
# p revrot("664438769", 8) == "67834466"
# p revrot("123456779", 8) == "23456771"
# p revrot("", 8) == ""
# p revrot("123456779", 0) == ""
# p revrot("563000655734469485", 4) == "0365065073456944"