=begin

Modify the kebabize function so that it converts a camel case string into a kebab case.

kebabize('camelsHaveThreeHumps') // camels-have-three-humps
kebabize('camelsHave3Humps') // camels-have-humps
Notes:

the returned string should only contain lowercase letters

input: a string in camel case.
output: the same string in kebab case 

rules: 

- the returned string must be in kebab case and must contain only lowercased alphabetical chars. 

data structures: arrays. 

algorithm: 

- clean str. 
- create index array
- splitting the input string in chars. 
- iterate though the array with index. 
- return the index if the current char is uppercased.
- iterate through index arr.
- insert '-' at the index. 
- lowercase every char and return. 

=end

def kebabize(str)
  return str if str.chars.all?(:downcase)
  clean_str = str.delete('^a-zA-Z')
  str_arr = clean_str.chars
  result_str = ''
  index = []
  count = 0

  str_arr.each_with_index do |char, idx|
    index << idx if idx > 0 && char == char.upcase
  end

  while count < index.size
    result_str = clean_str.insert(index[count] + count, '-') 
    count += 1
  end
  result_str.downcase
end


p kebabize('myCamelCasedString') == 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'
