=begin

Create a method that filters out an array of state names into two categories based on the second parameter. 

input: an array of strings and a parameter either abb or full
output: if second parameter is abb, return all abreviated states if second parameter is full return full names. 

rules: 

state abreviations will always be in uppercase. 

data structures: arrays

algorithm: 

using a conditional statement, check the value of the secnond parameter.
if second parameter == abb, select all strings that are only 2 characters long. 
if second parameter select all strings that have more than two characters. 

=end 

def filter_state_names(arr, param)
  if param == "abb"
    arr.select {|word| word.size == 2}
  elsif param == "full"
    arr.select {|word| word.size > 2}
  end
end


p filter_state_names(['Arizona', 'CA', 'NY', 'Nevada'], 'abb') == ['CA', 'NY'] 
p filter_state_names(['Arizona', 'CA', 'NY', 'Nevada'], 'full') == ['Arizona', 'Nevada'] 
p filter_state_names(['MT', 'NJ', 'TX', 'ID', 'IL'], 'abb') == ['MT', 'NJ', 'TX', 'ID', 'IL'] 
p filter_state_names(['MT', 'NJ', 'TX', 'ID', 'IL'], 'full') == [] 
p filter_state_names(['Montana', 'FL'], 'abb') == ['FL'] 
p filter_state_names(['Montana', 'FL'], 'full') == ['Montana'] 