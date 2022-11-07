=begin 

You will be given a number and you will need to return it as a string in expanded form

input: an integer
output: a string in expanded form

rules: 

a number in expanded form, is the sum of each digit multiplied by its mtching place value. (ones, tens, hundreds, etc.)

return value is a string. 


data structures: arrays 

algorithm:

- split the input integer into an array of characters. 

- in order to get the matching place value, multiply the index of each digit by 10. 

- in order to get the proper number at the matching place, multiply the current digt by the value of matching place. 

- pass each number into a result array. 

- join the result array using ' + ' as delimiter.

=end 


def expanded_form(num)
  expanded = []
  num_arr = num.digits

  num_arr.each_with_index do |num, index|
    expanded << num * (10 ** index) unless num == 0
  end 

  expanded.reverse.join(' + ')
end 




p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'
