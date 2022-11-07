=begin

Write a method that returns a lost of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start a position 1, an so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.



=end 

def leading_substrings(str)
  result = []
  end_point = 1
  while end_point < str.size + 1
    result << str.slice(0,end_point)
    end_point += 1
  end 
  p result
end  

def substrings(str)
  result = []
  while str.size > 0
    result << leading_substrings(str)
    str.slice!(0)
  end
  result.flatten    
end   

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]