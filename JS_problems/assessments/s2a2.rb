# ------------------------------------------------------------------------------
# Instructions
# ------------------------------------------------------------------------------
# Make sure everything puts out as 'true' when you run the file.
# When time is up, make sure you don't have any unexpected `end`s or infinite loops
# that would keep your code from running.
# Rename the file to be your firstname and lastname.
#
# Do not use the internet.  Do not reference the exercises.  If you forget a
# particular ruby method, write it yourself.
#
# Do not change the parameters passed into the functions in this file.
#
# Test your code with a few cases in addition to the ones we give
# you.  When we grade you, we use different test cases to make sure your logic
# is sound.
#
# Write as many helper methods as you need!
#
# Good luck!
# ------------------------------------------------------------------------------


# Least Common Multiple
# ------------------------------------------------------------------------------
# Define a method, #lcm, that accept two integers as arguments. The method should
# return the least common multiple of the two integers.
#
# Example of a multiple: 12 is a multiple of 4 because 12 is evenly
# divisible by 4.

# The common multiples of 2 and 3 include: 6, 12, 18.. and the smallest of these multiples
# is 6. Hence, the least common multiple of 2 and 3 is 6.
#
# the least common multiple of 2 and 3 is 6
# the least common multiple of 6 and 10 is 30
# it is NOT ALWAYS the product of the inputs
# lcm(6, 10) => 30
#
# the lcm for equal numbers is that number
# lcm(50, 50) => 50
#
# NOTE: do not use the integer method lcm; that is, do not call a.lcm(b).

def lcm(a, b)
  lcm = [a, b].max
  lcm += 1 until (lcm % a == 0) && (lcm % b == 0)
  lcm
end

puts "-------Least Common Multiple-------"
puts lcm(2, 3) == 6
puts lcm(6, 10) == 30
puts lcm(5, 20) == 20
puts lcm(50, 50) == 50
# ------------------------------------------------------------------------------


# Range Summary
# ------------------------------------------------------------------------------
# Given a sorted array of integers without duplicates, return the start and end
# integers of number ranges found in the array. A number range is considered valid
# when all numbers from start to end are contiguous and only increment by 1.
# Assume all numbers are included as part of a range (no stand alone elements).

def range_summary(array)
  #
  # your code goes here
  #
end

puts "-------Range Summary-------"
puts range_summary([0, 1]) == [[0, 1]]
puts range_summary([0, 1, 4, 5]) == [[0, 1], [4, 5]]
puts range_summary([0, 1, 3, 4, 6, 7]) == [[0, 1], [3, 4], [6, 7]]
puts range_summary([0, 1, 2, 3, 4, 5, 7, 8, 9, 15, 16]) == [[0, 5], [7, 9], [15, 16]]
# ------------------------------------------------------------------------------


# Dependent Definitions
# ------------------------------------------------------------------------------
# Define a method, #dependent_definitions(dictionary, word), that accepts a hash and
# a string as arguments. The hash contains key-value pairs, where the key is a word
# and the value is the definition of that word. Both keys and values are strings.

# Your method should look up the definition of the provided word in the dictionary,
# and construct a new hash of only the dictionary entries that the provided word's
# definition depends on.

# EXAMPLE:

# dictionary = {
#   "apple" => "a tasty red fruit",
#   "fruit" => "tasty produce",
#   "pleasant" => "pure goodness",
#   "red" => "a pleasant color",
#   "tasty" => "pleasant when eaten"
# }

# Above, apple's definition depends on the words tasty, red, and fruit so...

# dependent_definitions(dictionary, "apple") ==
# {
#   "fruit" => "tasty produce",
#   "red" => "a pleasant color",
#   "tasty" => "pleasant when eaten"
# }

dictionary = {
  "apple" => "a tasty red fruit",
  "fruit" => "tasty produce",
  "pleasant" => "pure goodness",
  "red" => "a pleasant color",
  "tasty" => "pleasant when eaten"
}


def dependent_definitions(dictionary, owners_hash)
  #
  # your code goes here
  #
end

puts "-------Dependent Definitions-------"


puts dependent_definitions(dictionary, "red") == {"pleasant" => "pure goodness"}
puts dependent_definitions(dictionary, "tasty") == {"pleasant" => "pure goodness"}
puts dependent_definitions(dictionary, "pleasant") == {}
puts dependent_definitions(dictionary, "apple") ==
  {
    "fruit" => "tasty produce",
    "red" => "a pleasant color",
    "tasty" => "pleasant when eaten"
  }
# ------------------------------------------------------------------------------


# Repeated Chars
# ------------------------------------------------------------------------------
# Define a method, #repeated_chars, that accepts a string as an argument. The method
# should return an array of all the characters that appear multiple times consecutively.
# If a single character is repeated on separate occasions, in should be included
# multiple times in the result.

# repeated_chars("mississippi") => ["s", "s, "p"]
# ------------------------------------------------------------------------------
def repeated_chars(word)
  #
  # your code goes here
  #
end
# ------------------------------------------------------------------------------
puts "-------Repeated Chars-------"
puts repeated_chars("cat") == []
puts repeated_chars("caat") == ['a']
puts repeated_chars("applle") == ['p', 'l']
puts repeated_chars("caataapulllllt") == ['a', 'a', 'l']
# ------------------------------------------------------------------------------


# ------------------------------------------------------------------------------
# Finished?
# ------------------------------------------------------------------------------
# Make sure everything puts out as 'true' when you run the file.
# Make sure you don't have any unexpected `end`s or infinite loops
# that would keep your code from running.
#
# Rename the file to be your firstname and lastname.
# ------------------------------------------------------------------------------