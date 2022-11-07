def removNb(n)
  sequence = 1.upto(n).to_a
  sequence_total = sequence.inject(:+)
  pairs = []
  result = []

  (0...sequence.size).each do |index1|
    (0...sequence.size).each do |index2|
      pairs << [sequence[index1] sequence[index2]]
    end
  end

  pairs.each do |pair|
    result << pair if sequence_total - pair.inject(:+) == pair.inject(:*)
  end
  result
end


p removNb(26) == [[15, 21], [21, 15]]
p removNb(100) == []