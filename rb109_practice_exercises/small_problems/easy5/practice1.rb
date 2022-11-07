# def ascii_value(str)
#   result = []

#   return 0 if str.empty?
#   str.chars.each {|char| result << char.ord}
#   result.inject(:+)
# end

def ascii_value(str)
  str.chars.map {|char| char.ord }.sum
end  

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0