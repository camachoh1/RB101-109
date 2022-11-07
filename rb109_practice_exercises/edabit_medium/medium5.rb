=begin

=end 

def has_digit(str)
  if str =~ /[0-9]/
    true
  else
    false
  end   
end  

p has_digit("c8") == true

p has_digit("23cc4") == true

p has_digit("abwekz") == false

p has_digit("sdfkxi") == false