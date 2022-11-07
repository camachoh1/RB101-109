=begin

You have a bank of switches before you, numbered from 1 to n. each switch is connected to exactly one ligth that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning on this seconpass, you toggle switches 2,3,4 and so on. On the third pass, you go back again to the beginning and toggle switches 3,6,9 and so on. You repeat this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches, and returns an array that identifies which lights are on after n repetitions. 

There are n number of lights each light has a switch. 
In order to recreate the lights, we need to use a hash where the keys represent the light and the value represent the state. 

this can be done with a helper method. 

  - initialize an empty hash. 
  - use a range starting from 1 up to n, iterate through the range passing assigning each count value as keys to the lights hash. 
  - initialize all lights with an "off" state. 
  -this new hash is the return value of the helper method. 

once we have the set of lights, we need to iterate through the collection of lights and switch the lights based on the problem description. 

in this case, we are going to use another helper method. 

this method will receive the lights hash and a n counter value.
- it will iterate through the hash n number of times.
- n is the value of the hash size. 
- it will check if the light positions hash are even values or odd values by checking if they are multiples of the counter value. 
- if they are a light will turn on else turn off
  - this will be achieved with a conditional statement. in form of a ternary operation. 

in order to get the derired ouput, (an array with all light positions that are on), we need to extract the positions that are in an on state. 

  this can be achieved with another helper method that iterates through the hash and selects the positions that have an on state. 

=end 

# def initialize_lights(num)
#   light_hash = {}
#   1.upto(num) do |count|
#     light_hash[count] = "off"
#   end
#   light_hash   
# end 

# def switch_lights(lights, n)
#   lights.each do |position, state|
#     if position % n == 0
#       lights[position] = (state == "off") ? "on" : "off"
#     end
#   end  
# end  

# def select_on_lights(lights)
#   lights.select do |position, state|
#     state == "on"
#   end.keys
# end  

# def thousand_lights(n)
#   lights = initialize_lights(n)
#   1.upto(lights.size) do |count|
#     switch_lights(lights,count)
#   end
#   select_on_lights(lights)
# end



def lights(n)
  result = []
  (1..n).each do |position|
    light_state = false
  (1..n).each do |pass|
    light_state = !light_state if position % pass == 0
  end
  result << position if light_state
  end
  result   
end

p lights(10)
