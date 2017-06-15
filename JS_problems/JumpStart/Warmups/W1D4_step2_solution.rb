# Longest Segment
# ----------------------------------------
# Write a method, #longest_segment, that accepts two strings as arguments. The
# first is a long string of characters, and the second is a delimeter. Split the
# first string by the delimeter and return the longest segment.

def longest_segment(input, delimeter)
  split_array = input.split(delimeter)
  split_array.max_by { |segment| segment.length }
end

## Discussion topics:
#   * What does the max_by method do?
#   * What kind of object does max_by return?



# -----------------



# String Sum
# ----------------------------------------
# Write a method, #string_sum, that accepts a string as an argument and returns
# the sum of the characters of that string. ie: a --> 1, b--> 2 .. z --> 26.
# Assume you have an input of only lower-case characters. You may want to define
# a helper method! (hint hint)

def string_sum(string)
  sum = 0
  string.each_char do |c|
    value = value_of(c)
    sum += value
  end
  sum
end

def value_of(character)
  letters = ('a'..'z').to_a
  letters.index(character) + 1
end

## Discussion topics:
#   * Why did we split up this solution into two methods?
#   * Why kind of object is created when we do this: ('a'..'z')
#   * Why do we add + 1 at the end of the value_of method?
#   * What does the each_char method do? What kind of objects does it operate on?
