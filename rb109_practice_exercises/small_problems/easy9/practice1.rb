=begin

Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name. The hash will contain two keys, :title and : ocupation, and the appropiate values. Your method should return a greeting that uses the person's full name, and mentions the person's title and ocucupation. 

=end 

def greetings(arr, hash)
  "Hello, #{arr.join(' ')}! Nice to have a #{hash[:title]}#{hash[:occupation]} around."
end  

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })