=begin

Rewirte your recursive fibonacci method so that it computs its result withoug recursion

=end 

def fibonacci(num)
  first, last = [1, 1]
  3.upto(num) do
    first, last = [last, first + last]
  end
  last 
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501