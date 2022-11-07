=begin

write a method that takes a string, and returns a new string in which every character is doubled. 

=end 

def repeater(str)
  result = ''
  str.chars.each do |char|
    result << char << char
  end 
  p result   
end   

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''