=begin

The year of 2013 is the first year after the old 1987 with only distinct digits.

Now your task is to solve the following problem: Given a year number, find the minimum year number which is strictly larger than the given one and has only distinct digits.

input: an integer representing a year made of distinct numbers onlt. 
output: an integer representing minimum year number which is strictly larger than the given one and has only distinct digits. 

rules: 

- minimum year is 1000
- max year is 9000 

data structures: arrays

algorithm: 

- create a helper method that defines a distinct year.
  - this method should receive an integer and check if all of its numbers are distinct and return true if the year is distinct.

- iterate through a range going from the input year up to the max year 9000. return the first distinct year that is greater than input year. 

=end 

def distinct_year?(year)
  year.digits.uniq == year.digits
end

def distinct_digit_year(year)
  loop do
    year += 1
    return year if distinct_year?(year)
  end  
end

p distinct_digit_year(1987)