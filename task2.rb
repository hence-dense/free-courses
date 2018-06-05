# Task 2

# Functions
def fib(input)
  exit if !input.ascii_only?
  
  # check input string numericness
  tester = Integer(input) != nil rescue false
  n = input.to_i if tester

  exit if !( n.kind_of?(0.class) )
  exit if (n < -10000) || (n > 10000)

  return 0 if (n == 0)
  return 1 if (n == 1) || (n == -1)

  if n > 1
    i = 0
    j = 1
    0.upto(n-2) do
      buffer = i + j
      i = j
      j = buffer
    end
    return j
  end

  if (n.negative?)
    i = 0
    j = 1
    0.upto(n.abs-2) do
      buffer = i + j
      i = j
      j = buffer
    end
    j = j*(-1) if n.even?
    return j
  end
end

# Main
puts fib(ARGV[0])