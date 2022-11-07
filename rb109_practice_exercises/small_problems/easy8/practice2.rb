=begin

Create a somple mad-lib program that prompts for a noun, a verb, an adverb and adjective and injects those into a story that you create. 

=end 

puts "Enter a noun: "
noun = gets.chomp

puts "Enter a verb: "
verb = gets.chomp

puts "enter an adjective: "
adjective = gets.chomp

puts "enter an adverb: "
adverb = gets.chomp

def madlib(noun, verb, adjective, adverb)
  puts "in the begining the #{noun} #{verb} into a #{adjective} size #{adverb} life began"
end   

madlib(noun, verb, adjective, adverb)