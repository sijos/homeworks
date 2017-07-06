# Number Counting Sequence
# ------------------------------------------------------------------------------
# The number counting sequence is a sequence of number strings that begins with:
# ["1", "11", "21", "1211", "111221", ...]
#
# "1" is counted as "one 1" or "11", followed by
# "11" which is counted as "two 1s" or "21", followed by
# "21" which is counted as "one 2 and one 1" or "1211", and so on.
#
# It helps to "say it out loud" to describe the item in the sequence.
#
# Given an integer n, generate the n-th element in the number counting sequence.

def number_counting_seq(n)
  return "" if n <= 0
  sequence = ["1"]
  sequence << next_seq(sequence.last) until sequence.length == n
  sequence.last
end

def next_seq(str)
  result = ""
  i = 0
  repeats = 1
  while i < str.length
    if str[i] == str[i + 1]
      repeats += 1
    else
      result << repeats.to_s + str[i]
      repeats = 1
    end
    i += 1
  end
  result
end

puts "-------Number Counting Sequence-------"
puts number_counting_seq(0) == ""
puts number_counting_seq(1) == "1"
puts number_counting_seq(2) == "11" # one 1 above
puts number_counting_seq(3) == "21" # two 1s above
puts number_counting_seq(5) == "111221" #the last sequence was one 1, one 2, and two 1s: "1211"
puts number_counting_seq(8) == "1113213211"
puts number_counting_seq(10) == "13211311123113112211"
