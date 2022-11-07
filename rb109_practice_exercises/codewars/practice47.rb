=begin

Sherlock has to find suspects on his latest case. He will use your method, dear Watson. Suspect in this case is a person which has something not allowed in his/her pockets.

Allowed items are defined by array of numbers.

Pockets contents are defined by map entries where key is a person and value is one or few things represented by an array of numbers (can be nil or empty array if empty), example:

pockets = { 
  bob: [1],
  tom: [2, 5],
  jane: [7]
} 
Write method which helps Sherlock to find suspects. If no suspect is found or there are no pockets (pockets == nil), the method should return nil.

input: hash and an array. 
output: a suspect(key) in an array 

rules:

- if no suspects are found return nil. 
- allowed items are defined by the input array.
- method should return the suspect if their pocket contains an element that its not present in the allowed items arr. 


data structures: arrays / hashes 

algorithm: 

if pockets is empty return nil. 

- create a result arr
- create difference arr 
- iterate through pockets hash
- compare eavery value with the allowed items and store the difference in the difference arr.
- if the difference arr size > 0 pass in the suspect into the result arr. 
- if at the end of he iteration difference is empty return nil. 

=end

def find_suspects(pockets, allowed_items)
  return nil if pockets.empty?

  result = []
  difference = []

  pockets.each do |suspect, pocket|
    return nil if  pocket == nil || pocket.empty?

    difference = pocket - allowed_items
    result << suspect if difference.size > 0
  end
  return nil if result.empty?
  
  result 
end 


pockets = { meg: [1, 3], tom: [5, 3] }
p find_suspects(pockets, [1, 3]) == [:tom]

pockets = {}
p find_suspects(pockets, [1, 3]) == nil

pockets = { tom: [2], bob: [2], julia: [3], meg: [3] }
p find_suspects(pockets, [2, 3]) == nil


pockets = { julia: nil, meg: [] } 
p find_suspects(pockets, [1, 6]) == nil

pockets = { meg: [3], tom: [5] }
suspects = [:meg, :tom].sort
p find_suspects(pockets, []) == suspects

pockets = { meg: [1, 3], tom: [5, 3] }
p find_suspects(pockets, [1, 3]) == [:tom]