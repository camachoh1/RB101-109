=begin

create a function that takes a sentence and turns every 'i' into 'wi' and 'e' into 'we', and add 'owo' at the end. 

input: a string
output: a string with all 'i's replaced by 'wi' and 'e' replaced by 'we' and the string'owo' at the end. 

rules: 

input string contains multiple words. 
in case a string contains only a single word we can still replace the 'i's and 'e's. 

data structures: arrays

algorithm: 

- split the input string into an array of words. 
- iterate through the array of words and split each word into an array of characters.
- iterate through the aray of characters and replace every 'i' with 'wi' and 'e's with 'we'
- once iteration is done add 'owo' at the end and return. 

=end 

def owofied(str)
  words_arr = str.split
  result = words_arr.map do |word|
    word.chars.map do |char|
      case char
      when 'i' then 'wi'
      when 'e' then 'we'
      else          char
      end
    end.join  
  end
  "#{result.join(' ')} owo"    
end  

p owofied("I'm gonna ride 'til I can't no more") == "I'm gonna rwidwe 'twil I can't no morwe owo" 
p owofied("Do you ever feel like a plastic bag") == "Do you wevwer fwewel lwikwe a plastwic bag owo" 
p owofied("Cause baby you're a firework") == "Causwe baby you'rwe a fwirwework owo" 
p owofied("Never gonna give you up") == "Nwevwer gonna gwivwe you up owo" 
p owofied("We've known each other for so long") == "Wwe'vwe known weach othwer for so long owo" 
p owofied("Never gonna let you down") == "Nwevwer gonna lwet you down owo" 
p owofied("Shine bright like a diamond") == "Shwinwe brwight lwikwe a dwiamond owo" 

