# def fibonacci_last(num)
#   first, last = [1, 1]
#   3.upto(num) do
#     first, last = [last, first + last]
#   end
#   last.to_s[-1].to_i
# end

def fibonacci_last(nth)
  last_2 = [1, 1]
  3.upto(nth) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end

  last_2.last
end

p fibonacci_last(15) 
p fibonacci_last(20) 
p fibonacci_last(100) 
p fibonacci_last(123456789) == 4