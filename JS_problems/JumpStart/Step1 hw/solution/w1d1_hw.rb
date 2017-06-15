# Three Digit Format

# Define a method, #three_digit_format(n), that accepts an integer, n, as an
# argument. Assume that n < 1000. Your method should return a string version of
# n, but with leading zeros such that the string is always 3 characters long.

def three_digit_format(n)
  # return "%03d" % n

  # if n > 99
  #   "#{n}"
  # elsif n > 9
  #   "0#{n}"
  # else
  #   "00#{n}"
  # end

  # n.to_s.rjust(3, "0")
end

puts "------Three Digit Format------"
puts three_digit_format(765) == "765"
puts three_digit_format(100) == "100"
puts three_digit_format(15) == "015"
puts three_digit_format(6) == "006"
