# Three Digit Format

# Define a method, #three_digit_format(n), that accepts an integer, n, as an
# argument. Assume that n < 1000. Your method should return a string version of
# n, but with leading zeros such that the string is always 3 characters long.

def three_digit_format(n)
  my_num = n.to_s
  
  if n < 10
    my_num = "00" + my_num
  elsif n < 100
    my_num = "0" + my_num
  end

  # while my_num.length < 3
  #   my_num = "0" + my_num
  # end

  my_num
end

puts "------Three Digit Format------"
puts three_digit_format(100) == "100"
puts three_digit_format(15) == "015"
puts three_digit_format(6) == "006"