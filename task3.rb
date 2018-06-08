# Task 3

def char_divider(input)
  exit if ((input.length < 1) || (input.length > 10000))
  exit if !input.ascii_only?

  a = input.scan(/[aeiouy]/i).join('')
  b = input.scan(/[^aeiouy0-9_\W]/i).join('')
  c = input.scan(/[0-9]/).join('')

  puts "#{a} #{b} #{c}"
end

char_divider("#{ARGV[0]}")