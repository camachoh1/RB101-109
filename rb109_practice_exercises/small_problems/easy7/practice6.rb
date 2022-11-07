=begin

Modify the method from the previous exercise so it ignores non-alphaberic characters when determining wether it should uppercase or lowercase each letter. The non-alphaberic characters should still be included in the return value they just don cont when toggling the desired case. 

modify method from previous exercise by adding a condition that checks wether the character is non alphabetic, if it is, skip the character but keep the upcase and downcase parter going. 

keeping in mind the switch method used, lets add a new condition that checks if a character is non alphabetic. 


=end

def staggered_case(str)
  result = ''
  needs_upcase = true

  str.chars.each do |char|
    if char =~ /[a-z]/i
      if needs_upcase 
        result += char.upcase
      else 
        result += char.downcase
      end
      needs_upcase = !needs_upcase
    else 
      result += char   
      end 
    end
  p result    
end 



p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'