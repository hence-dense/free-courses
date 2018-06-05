# Task 3

def char_divider(input)
  exit if ((input.length < 1) || (input.length > 10000))
  exit if !input.ascii_only?

  a = input.scan(/[aeiou]/i).join('')
  b = input.scan(/[^aeiou0-9\W]/i).join('')
  c = input.scan(/[0-9]/).join('')

  puts "#{a} #{b} #{c}".strip
end

char_divider("#{ARGV[0]}")