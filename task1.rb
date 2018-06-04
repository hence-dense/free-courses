# Task 1

def check_palindrome(input)
  exit if (input.length < 1) ||
          (input.length > 10000)

  str = input.gsub(/\W/,'').downcase

  if str == str.reverse
    puts "YES"
  else
    puts "NO"
  end
end

check_palindrome "#{ARGV[0]}"
