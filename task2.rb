# Task 2

# Functions
def fib(input)
  return " " if ( input.nil? || !input.ascii_only? )
  # check input string numericness
  n = input.to_i if ( Integer(input) rescue false )
  return " " if ( !( n.kind_of?(Integer) ) || (n < -10000) || (n > 10000) )

  return 0 if (n == 0)
  return 1 if (n == 1) || (n == -1)

  i = 0
  j = 1
  0.upto(n.abs-2) do
    buffer = i + j
    i = j
    j = buffer
  end
  j = j*(-1) if n.even? && n.negative?
  return j
end

# Main
ARGV.each do |item|
  puts fib(item)
end