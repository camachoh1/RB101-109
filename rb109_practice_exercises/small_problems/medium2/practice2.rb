=begin

Write a method that returns true if the word passed in as argument can be spelled from this set f blocks. false otherwise. 

the input words can only be spelled with the letters of the spelling blocks that do not use both letters from any given block. Each block can only be used once. 

input: a string
output: a boolean value true if the word passed as argument can be spelled from the set of blocks, false otherwise. 

rules: 

each spelling block contains 2 letters. 
- each spelling block can only be used once. 
- return true ony if the input word is spelled with the letters that make part of the spelling blocks. 
- method is case insensitive. Meaning lowercase values also return true as long as they meet the requirements. 
- return false if a word uses a spelling block twice. 

data structures: arrays

algorithm: 

create spelling blocks
  - this can be done using a nested array.

split the input string into an array of characters

check if each character is present in the spelling blocks.

if character is present in spelling block, remove current character from block. 

if speling block size is less than 1 by the end of the iterations, return false, else true. 

=end 

SPELLING_BLOCKS = [['B', 'O'], ['X', 'K'], ['D','K'], ['C','P'], ['N', 'A'], ['G','T'], ['R','E'],['F','S'], ['J','W'],['H','U'], ['V','I'],['L','Y'],['Z','M']]



# def block_word?(str)
#   used_blocks = []

#   str_arr = str.chars
#   str_arr.each do |char|
#     char.upcase! if char == char.downcase
#     SPELLING_BLOCKS.select do |block|
#       used_blocks << block if block.include?(char)
#     end
#   end
#   result.uniq == result
# end  

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end


p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true