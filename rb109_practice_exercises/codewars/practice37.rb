=begin

Complete the greatest product method so that it'll find the greatest product og five consecutive digits in the given string of digits. 


For example:

greatestProduct("123834539327238239583") // should return 3240
The input string always has more than five digits.


input: a string of digits.
output: the maximun product of five consecutive digits in the given string. 

rules: 

- the input string will always contain more than five digits. 


data structures: arrays 

mental model: 

get every single substring of five digits then get the product from each and return the maximun value. 

algorithm:

- create product array
- create substrings array
- get every single 5 digit substring
  - transform into integers and get the product 
pass the product into the products array
select the maximun value. 

=end 

def greatest_product(num_str)
  substrings = []

  (0...num_str.size).each do |inital|
    substrings << num_str.chars[inital,5]
  end

  substrings = substrings.select {|substr| substr.size == 5}
  
  products = substrings.map do |subarr| 
    subarr.map(&:to_i).inject(:*)
  end.max 
end


p greatest_product("123834539327238239583") == 3240
p greatest_product("395831238345393272382") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0