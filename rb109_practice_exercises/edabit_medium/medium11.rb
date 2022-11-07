=begin

Given a string, return a sorted array of words formed from the first three letters, then the next three letters, shifting by only one. 

input: a string
output: an array of strings, where each string is a substring from input string that is 3 characters long. 

rules: 

- return an empty array if given a word with less than 3 letters. 

data structures: arrays

algorithm: 

- create result array
- create starting point variable.
  - starting point must have an initial value 
loop 
pass the first three characters of the input string into result array.
increment starting point and end point by 1. 
continue the process until all substrings have been passed into the result array.
return an empty array if the string size is < 3. 

=end 

def three_letter_collection(str)
  result = []
  start = 0
  
  while start < str.size
    return result if str.size < 3
    result << str.slice(start,3)
    start += 1
  end
  result.select {|word| word.size == 3}.sort
end


p three_letter_collection("slap") == ["lap", "sla"] 
p three_letter_collection("click") == ["cli", "ick", "lic"] 
p three_letter_collection("cat") == ["cat"] 
p three_letter_collection("hi") == [] 
p three_letter_collection("e") == [] 
p three_letter_collection("") == [] 
p three_letter_collection("programming") == ["amm", "gra", "ing", "min", "mmi", "ogr", "pro", "ram", "rog"] 
p three_letter_collection("antidisestablishmentarianism") == ["abl", "ani", "ant", "ari", "bli", "dis", "ent", "est", "hme", "ian", "idi", "ise", "ish", "ism", "lis", "men", "nis", "nta", "nti", "ria", "ses", "shm", "sta", "tab", "tar", "tid"] 
p three_letter_collection("zoology") == ["log", "ogy", "olo", "ool", "zoo"] 
p three_letter_collection("assassination") == ["ass", "ass", "ati", "ina", "ion", "nat", "sas", "sin", "ssa", "ssi", "tio"] 
p three_letter_collection("bookkeeper") == ["boo", "eep", "epe", "kee", "kke", "okk", "ook", "per"] 