=begin

Write a program that solicits 6 numbers from te user, then prints a message that describes wether or not the 6th number appears amongts the first 5 numbers. 

input: 5 integers, input by the user. 
output: an array containing the numbers input by the user, with a string message confirming if the las number entered appears amongts the first 5 numbers. 

rules: 

- request the user to input 6 different numbers.
- if the last number appears amongts the first 5 numbers return a message confirming and also showing the input integers in an array
- for this program, it does not matter if the number is negative or possitive. 

Data structure: Arrays in order to store input numbers. 

algorithm: 

- create helper method to make input request message dynamic by changing the suffix on each input request. 
  - this can be achieved by using a case statement that returns the suffix needed based on an integer value. 
  -integer value can be incremented in a loop on each iteration.

- create an array that stores the numbers input by the user.
- create suffix number variable  
- collect users data on a loop
-increment the suffix number on each iteration of the loop
- break out of the loop once the user has entered 6 values. 
- remove the last value from arr and store in new variable. 
- check if last value is present amongts the first 5 numbers. 

=end

def suffix(num)
  case num
  when 1 then '1st'
  when 2 then '2nd'
  when 3 then '3rd'
  when 4 then '4th'
  when 5 then '5th'
  else        'last'
  end            
end

def search
  user_input = []
  suffix_num = 1

  loop do 
    puts "Enter the #{suffix(suffix_num)} number"
    number = gets.chomp.to_i
    user_input << number 
    suffix_num += 1
    break if user_input.size == 6
  end

  last_number = user_input.pop 

  if user_input.include?(last_number) 
    puts "the number #{last_number} appears in #{user_input}"
  else
    puts "the number #{last_number} does not appear in #{user_input}"
  end  
end

search

