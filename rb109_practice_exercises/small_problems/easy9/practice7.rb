=begin

write a method that takes a first name, a space, and a last name passed as a single string argument, and returns a string that contains the last name, a comma, a space and the first name.

input a string with a name and last name. 

output a string with the last name at first, a coma and the first name. 

split the input into an array of words.

interpolate the values in the order required by the problem description. 

=end 

def swap_name(name)
  name_arr = name.split
  first_name = name_arr[0]
  last_name = name_arr[1]

  "#{last_name}, #{first_name}"
end   




p swap_name('Joe Roberts') == 'Roberts, Joe'