=begin

For a given non empty string (s) find a minimum substring (t) and the maximum number (k) such that the entire string (s) is equal to (t) repeated (k) times. 

problem: 

given a non empty string, return the smallest substring and the number of times it needs to be repeated in order to recreate the input string. 

input: a string
output: an array containing the smallest substring, and the number of times it needs to be repeated in order to recreate the input string. 

output:  method should return an array containing the smallest substring and the number of times it needs to be repeated in order to recreate the input string. 

rules:

input string consist of lowecase letters.

- if no minimum substring can be repeated, return the maximun substing and 1. 

data structures: arrays

algorithm:

get all possible substrings


=end

def f(str)
  (1..str.size).each do |substr_size|
    p substr = str[0, substr_size]
    p repetitions = str.size / substr_size

    return [substr, repetitions] if substr * repetitions == str
  end
end


p f("ababab") #== ["ab", 3]
p f("abcde") #== ["abcde", 1]
