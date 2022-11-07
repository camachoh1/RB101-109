=begin

Write a method that implements a miniature stack and register based programming language that has the following commands: 

- n Place a value n in the "reguster". Do not modify the stack.
- PUSH Push the reister value on to the stack. Leave the value in the reguster. 
- ADD Pops a value from the stack and adds it to the register value, storing the result in the reguster. 
- SUB pops a value from the stack and subtracts it form the register value, storing the result in the register.
-  MULT pops a value from the stack and multiplies it by the register value, storing the result in the register.
DIV pops a value from the stack and divides it into the register value, storing the integer result in the register. 
- MOD pops a value from the stack and divides it into the register vale, storing the integer remainder of the division in the register. 
POP remove the topmost item from the stack and place in register. 
PRINT print the register value.

All operations are integer operations (which is only important with DIV and MOD)



input: a string containing letters and numbers.
output: an integer wich is the return value of the different operations takin place in the stack language.

algorithm:

initialize register with initial value of 0
initialize stack as an empty array

split input string in an array of characters.

- iterate through the array of characters.

- now we need to verify each character from the array in order to pass the commands to our stack. 

- we can use a case statement in order to make our program react. 

  if the character is a number, pass it into the register, 
  - if its a word then proceed to apply the operations specified by the problem description.

  - an easy way to check if a character is a number or a string is using #to_i. This method will return 0 if the calling object is a letter. if the calling object can be transformed into an integer it will return the value of the integer string. for example: 1.to_i => 1, 'hola'.to_i =>0

=end 

def minilang(command)
  stack = []
  register = 0
  command.split(' ').each do |element|
    if element.to_i.abs > 0
      register = element.to_i 
    end

    case element
    when 'POP' then  register = stack.pop
    when 'PUSH' then stack << register
    when 'ADD'  then register += stack.pop
    when 'SUB'  then register -= stack.pop
    when 'MULT' then register *= stack.pop
    when 'DIV'  then register /=stack.pop
    when 'MOD'  then register %= stack.pop
    when 'PRINT'then puts register  
    end
  end 
end  


# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
