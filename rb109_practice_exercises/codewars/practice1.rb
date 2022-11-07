=begin

write a method that counts lowercase letters in a given string and return the letter count in a hash with 'letter' as key and count as value. The key must be a symbol instead of a string. 

input: a string
output: a hash where the lowercase letters are keys and values are the number of appearance of each letter in the input string. Keys must be symbols not strings. 

rules: 

data structure: hash

algorithm: 

- split the input string into an array of characters.
- iterate through the array of characters. 
- assign each letter as value to the result hash.
- assign the number of appearances as values.
- this can be done using each_with_object passing a hash a default vaule. 
- when assigning they keys, use to_sym in order to transform strings into symbols. 
=end


def letter_count(str)
  str.chars.each_with_object(Hash.new(0)) do |char, hash|
    hash[char.to_sym] += 1
  end
end  


p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}