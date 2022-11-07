=begin 
Create a function that takes a string and returns the first character of every word if the length of the word is even and the middle character of the word if the word is odd. 

input: a string with multiple words. 
output: a string made of the first or middle characters of the input string, depending on wether the word lenght is even or odd. if word even the first character is returned else the middle character of the word is returned. 

rules: 

the string contains both letters and numbers. 


data structure: arrays

algorithm: 

create result string variable with an empty string as value.
split the input string into an array of characters.
iterate through the array of characters, if the word size is even pass the first character into the result string else middle character. 
in order to define the middle character we need to divide the word size by 2. 

=end 

def stmid(str)
  result = ''
  str.split.each do |word|
    if word.size.even? 
      result << word[0]
    else    
    result << word[word.size / 2]
    end
  end
  result
end  


p stmid("Alexa have to paid") == "ehtp"
p stmid("Th3 0n3 4nd 0n1y")  == "hnn0"
p stmid("who is the winner") == "hihw"