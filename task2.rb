# Task 2
require 'matrix'

def fibcalc(input)
  m = Matrix[[0, 1], [1,1]]

  result = (m**(input.to_i-1))[1,1].to_i
end

puts "#{fibcalc(ARGV[0])}"