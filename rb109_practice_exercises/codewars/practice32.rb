=begin 

Write a method that takes an array of cosecutive (increasing) letters as input and returns the missing missing letter in the array.

You will always get a valid array. and it will always be exactly one letter missing. The length of the array will always be at least 2

the array will contain letters in only one case.

input: an of consecutive letters sorted alphabetically.
output: the missing letter from the input array.

rukes: 

- the input strings will only be in one case. it can be only uppercase character or lowercase.
- the input array will only contain the 26 letters from the english alphabet. 
- minimum size will be at least 2.

data structures: arrays

algorithm: 

- create a constant variable that contains our alphabet.
- create a secondary array which will contain the letters from the alphabet that from the starting point of the input array to the ending point of the input array.
- we will compare the two arrays and return the difference.

- we will create our constant variable with only lowercase characters, if needed, we will upcase all of the chars in array 2 before comparing the two arrays. 
  - iterate through array. 
    - check if the count of uppercased chars is == to the arr size. if it is, iterate through arr2 and upcase every char.
    then compare and return the difference.
else just return the difference. 

=end 

ALPHABET = ('a'..'z').to_a

def all_caps(arr)
count = 0

  arr.each do |char|
    count += 1 if char == char.upcase
    return true if count == arr.size
  end
  false 
end

def find_missing_letter(arr)
  missing_letter = []
  arr2 = ALPHABET[ALPHABET.index(arr.first.downcase)..ALPHABET.index(arr.last.downcase)]
  
  difference = arr2.map(&:upcase!) - arr if all_caps(arr)
  difference = arr2 - arr
  difference[0]
end 

p find_missing_letter(["D", "E", "F", "H", "I", "J", "K", "L", "M", "N", "O"])
p find_missing_letter(["a","b","c","d","f"]) == "e"
p find_missing_letter(["O","Q","R","S"]) == "P"
p find_missing_letter(["b","d"]) == "c"
p find_missing_letter(["a","b","d"]) == "c"
p find_missing_letter(["b","d","e"]) == "c"

