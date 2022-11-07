=begin

Write a function that returns the lexicographically first and last rearrangements of a lowercase string. Output the result in an array.

input: a string
output: an array containing the two lexicographical permutations of the string, first and last.

=end

def first_and_last(str)
  first = str.chars.sort
  last = str.chars.sort {|a,b| b <=> a}
  [first.join, last.join]
end

p first_and_last("marmite") == ["aeimmrt", "trmmiea"]

p first_and_last("bench") == ["bcehn", "nhecb"]

p first_and_last("scoop") == ["coops", "spooc"]