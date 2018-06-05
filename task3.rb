# Task 3

def char_filter(str)
  a = str.scan(/[aeiou]/i).join('')
  b = str.scan(/[^aeiou0-9\W]/i).join('')
  c = str.scan(/[0-9]/).join('')

  puts "#{a} #{b} #{c}".strip
end

char_filter("#{ARGV[0]}")