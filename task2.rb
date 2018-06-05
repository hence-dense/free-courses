# Task 2

# Add negative sequence handling
def fib(input)
  # check input string numericness
  tester = Integer(input) != nil rescue false
  n = input.to_i if tester

  exit if !( n.kind_of?(0.class) )
  exit if (n < -10000) || (n > 10000)

  return 0 if (n == 0)
  return 1 if (n.abs == 1)

  n = n.abs

  if n > 1
    i = 0
    j = 1
    0.upto(n-2).each do
      buffer = i + j
      i = j
      j = buffer
    end
    return j
  end
end

puts fib(ARGV[0])
