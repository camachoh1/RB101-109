=begin

Given two words, how many letters do you have to remove from them to make them anagrams?
Example
First word : c od e w ar s (4 letters removed)
Second word : ha c k er r a nk (6 letters removed)
Result : 10

Hints
A word is an anagram of another word if they have the same letters (usually in a different order).
Do not worry about case. All inputs will be lowercase.


input: two strings
ouput: an integer representing the number of letters removed from one string in order to make both of them an anagram. 

rules: 

- method removes chars from either string until both strings are anagrams. 

- returns the number of characters it removed in order to create the anagrams. 

data structures: array

algorithm: 

- helper method called anagram? 
  receives a sttring and returns true if input str is an anagram false othrerwise. 

- initialize counter variable with initial value of 0.
- split the input string into arrays of characters. 
- check if both strings are anagrams. 
  - return the counter if true.
else 
  remove a chars and increment count.
  - iterate through each chars arr
    - delete the chars that are not present in the other string. 
    - repeat the process for both.
    - subtract the size of the original string with the string that has deleted chars add the result to counter.

 
- retrurn the counter. 

=end




def anagram(str1, str2)
  str2.chars.sort.select do |char| 
    str1.include?(char)
  end.uniq
end

def anagram_difference(str1, str2)
  difference = 0
  return difference if str1.size == 0 && str2.size == 0

  anagram = anagram(str1,str2)
  

  difference = (str1.size - anagram.size) + (str2.size - anagram.size).abs

end 


p anagram_difference('', '') == 0
p anagram_difference('a', '') == 1
p anagram_difference('', 'a') == 1
p anagram_difference('ab', 'a') == 1
p anagram_difference('ab', 'ba') == 0
p anagram_difference('ab', 'cd') == 4
p anagram_difference('aab', 'a') == 2
p anagram_difference('a', 'aab') == 2
p anagram_difference('codewars', 'hackerrank') == 10
