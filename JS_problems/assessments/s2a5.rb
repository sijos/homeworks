### Missing Numbers
#
# Given an array of unique integers ordered from least to greatest, write
# a method that returns an array of the integers that are needed to
# fill in the consecutive set.

def missing_numbers(nums)
  missing = []
  next_cons = nums[0] + 1
  while next_cons < nums.last
    missing << next_cons unless nums.include?(next_cons)
    next_cons += 1
  end
  missing
end

puts "-------Missing Numbers-------"
puts missing_numbers([1, 3]) == [2]
puts missing_numbers([2, 3, 7]) == [4, 5, 6]
puts missing_numbers([-5, -1, 0, 3]) == [-4, -3, -2, 1, 2]
puts missing_numbers([0, 5]) == [1, 2, 3, 4]

# RATING: medium

### Titleize
#
# Write a method that capitalizes each word in a string like a book title.
# Do not capitalize words like 'a', 'and', 'of', 'over' or 'the'.

def titleize(title)
  no_caps = %w(a and of the over)
  title.split.map.with_index do |word, idx|
    (idx == 0 || !no_caps.include?(word)) ? word.capitalize : word
  end.join(' ')
end

# RATING: easy

puts "-------Titleize-------"
puts titleize("basketball") == "Basketball"
puts titleize("stephen curry") == "Stephen Curry"
puts titleize("war and peace") == "War and Peace"
puts titleize("the bridge over the river kwai") == "The Bridge over the River Kwai"



# Unique in Order
#
# Implement the function unique_in_order which takes a string and
# returns an array of letters without any elements with the same value next
# to each other. Preserve the original order of elements.

def unique_in_order(string)
  result = []
  string.each_char.with_index do |ch, idx|
    next if ch == string[idx + 1]
    result << ch
  end
  result
end

puts "-------Unique in Order-------"
puts unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
puts unique_in_order('BBBAAAACCDAABBB') == ['B', 'A', 'C', 'D', 'A', 'B']
puts unique_in_order('ABBCcAD') == ['A', 'B', 'C', 'c', 'A', 'D']
puts unique_in_order('aAa') == ['a', 'A', 'a']

# RATING: medium

# Substrings
#
# Return an array of all the substrings for a given string.
# Be sure that the returned array is sorted.

def substrings(string)

end

puts "-------Substrings-------"
puts substrings("") == []
puts substrings("123") == ["1", "12", "123", "2", "23", "3"]
puts substrings("ruby") == ["b", "by", "r", "ru", "rub", "ruby", "u", "ub", "uby", "y"]