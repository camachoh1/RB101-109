=begin

write a method that will return true if the walk the app gives you will take exactly 10 minutes. Anf will return you to your starting point. Return false otherwise.

input: an array 
output: a boolean. 

rules: 

- assume that arrays will always contain at least 1 element.
- array will only contain directions 'n','s','w','e'. 
- takes 1 minute to traverse a city block.
- app returns true if walk takes exactly 10 minutes and it ends where it started.
- false otherwise

data structure: array

algorithm: 

- create initial direction array.
- create starting point variable with initial value of 0
- check the input array size, if it is equal to 10 continute, else return false.
- iterate through input array.
- pass in first value into initial direction array
- increment starting point by 1.
- check second direction, if it is opposite to the initial direction, starting point -1 else starting point +1 
once itaration is done if starting point == 0 return true else false. 

=end 

# OPPOSITES = {'n' => 's', 'e' => 'w', 's' => 'n', 'w' => 'e'}

# def opposites?(initial_dir, next_dir)
# OPPOSITES.key?(initial_dir) && next_dir == OPPOSITES[initial_dir]
# end

# def is_valid_walk(walk)
#   initial_direction = ''
#   starting_point = 0

#   return false if walk.size != 10
#   walk.each do |direction|
#     if initial_direction.empty?
#       initial_direction << direction
#     elsif opposites?(initial_direction, direction)
#       starting_point -= 1
#     elsif 
#       starting_point += 1
#     end
#   end
#   p starting_point
#   starting_point <= 0 ? true : false 
# end

def is_valid_walk(walk)
  return false if walk.size != 10
  y = 0
  x = 0

  walk.each do |direction|
    case direction
      when 'n' then y += 1
      when 's' then y -= 1
      when 'e' then x += 1
      when 'w' then x -= 1
    end
  end
  y == 0 && x == 0  
end 


p is_valid_walk(['n','s','n','s','n','s','n','s','n','s']) == true
p is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e']) == false
p is_valid_walk(['w']) == false
p is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) == false
