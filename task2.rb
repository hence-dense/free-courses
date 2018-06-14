# Task 2

def fib(input)
  return " " if ( input.nil? || !input.ascii_only? || (input.match?(/[.,]/i)) )
  num = input.to_i if ( Integer(input) rescue false )
  return " " if ( !( num.kind_of?(Integer) ) || (num < -10000 || num > 10000) )

  return 0 if (num == 0)
  return 1 if (num == 1) || (num == -1)

  first = 0
  last = 1
  0.upto(num.abs-2) do
    buf = first + last
    first = last
    last = buf
  end
  last = last*(-1) if num.even? && num.negative?
  return last
end

# Main
ARGV.each do |item|
  puts fib(item)
end