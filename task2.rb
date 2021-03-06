# Task 2
def fib_wrap(num)
  num < 0 ? ((-1)**(num + 1)) * fib(num.abs)[0] : fib(num)[0]
end

def fib(n)
  if n == 0
    return [0, 1]
  else
    n1, n2 = fib(n / 2)
    a = n1 * (n2 * 2 - n1)
    b = n1 * n1 + n2 * n2

    ( n % 2 == 0 ) ? [a, b] : [b, a + b]
  end
end

puts "#{fib_wrap(ARGV[0].to_i)}"

# This algo time
# 0.00015199999324977398
# Naive algo time (old)
# 0.00884900000528432429
# )