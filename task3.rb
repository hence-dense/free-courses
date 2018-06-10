# Task 3

def char_divider(input)
  exit if ((input.length < 1) || 
          (input.length > 10000)) || 
          !input.ascii_only?

  a = input.scan(/[aeiouy]/i).join('')
  b = input.scan(/[^aeiouy_\d\W]/i).join('')
  c = input.scan(/[\d]/).join('')

  puts "#{a} #{b} #{c}"
end

# char_divider("#{ARGV[0]}")

ARGV.each do |item|
  char_divider("#{item}")
end