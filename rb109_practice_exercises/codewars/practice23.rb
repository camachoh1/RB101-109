=begin

write a function that when given a url as a string, parses out the domain name and returns it as a string. 

input: an URL string
output: a string only the domain 

rules: 

input string will contain both alphabetic and non alphabetic characters.

- assume the input string is non empty.

- return the domain only.

data structures: arrays

algorithm: 

- split the input string at the '/' delimiter point.
- this will return an array of words.
  - the domain is usually surrounded by '.' so we need to split the string again at the '.' delimiter then select the domain word. 
=end

def domain_name(url)
  url_elements = url.split('/')
  domain_elements = url_elements.select {|word| word.include?('.')}.join

  domain_elements.split('.').max_by do |word|
    word.size
  end 
end

p domain_name("http://google.com") == "google"
p domain_name("http://google.co.jp") == "google"
p domain_name("www.xakep.ru") == "xakep"
p domain_name("https://youtube.com") == "youtube"

