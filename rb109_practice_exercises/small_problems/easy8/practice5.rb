=begin

Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence as the substrings appear in the string. Druplicate palindrome should be included multiple times. 

For the purspose of this exercise, you should consider all characters and pay attention to case. Single characters are not palindromes. 

input: string
output: an array contining all palindromic substrings. 

algorithm: 

create a helper method that verifies if a string is a palindrome. 

first we need to pass the input string as argument to substing. Save the return value in a substring variable.

iterate through the substrings array and select only the substrings that are palindromes.
  this can be done with our helper method. 

=end

def leading_substrings(str)
  result = []
  end_point = 1
  while end_point < str.size + 1
    result << str.slice(0,end_point)
    end_point += 1
  end 
  result
end  

def substrings(str)
  result = []
  while str.size > 0
    result << leading_substrings(str)
    str.slice!(0)
  end
  result.flatten    
end 

def palindrome?(str)
  str.size > 1 && str.reverse == str
end   

def palindromes(str)
  substrings_arr = substrings(str)
  result = substrings_arr.select do |substring|
    palindrome?(substring)
  end 
  result 
end 

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]