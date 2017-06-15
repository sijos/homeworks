# Even Splitters
# ------------------------------------------------------------------------------
# Return an array of characters on which we can split an input string to produce
# substrings of the same length.

# Don't count empty strings after the split.

# Here's an example for "banana":
#
# "banana".split("a") # => ["b", "n", "n"] (all elements same length)
# "banana".split("b") # => ["", anana"] (all elements same length - there's only
# one element "anana" because the empty string doesn't count)
# "banana".split("n") # => ["ba", "a", "a"] (all elements NOT same length)
#
# result: ["b", "a"]
#
# ------------------------------------------------------------------------------

# def even_splitters(string)
#   result = []
#
#   string.chars.uniq.each do |letter|
#     count = Hash.new(0)
#     temp_arr = string.split(letter).reject(&:empty?)
#     temp_arr.each { |l| count[l] = l.length }
#
#     result << letter if count.values.uniq.length <= 1
#   end
#
#   result
# end



# def even_splitters(string)
#   string.chars.uniq.map do |letter|
#     string.split(letter).reject(&:empty?).map(&:length).uniq.length <= 1 ? letter : nil
#   end.compact
# end



# def even_splitters(string)
#   string.chars.uniq.select do |letter|
#     temp_arr = string.split(letter).reject(&:empty?).map!(&:length)
#     letter if temp_arr.uniq.length <= 1
#   end
# end

# def even_splitters(string)
  # string.chars.uniq.select { |letter| string.split(letter).reject(&:empty?).map(&:length).uniq.length <= 1 }
# end

# def even_splitters(string)
#   string.chars.uniq.select do |letter|
#     check_array = string.split(letter).reject { |l| l.empty? }
#     base = check_array.first
#     if check_array.all? { |l| base.length == l.length }
#       letter
#     end
#   end
# end


puts "-----Even Splitters----"
puts even_splitters("") == []
puts even_splitters("t") == ["t"]
puts even_splitters("jk") == ["j", "k"]
puts even_splitters("xoxo") == ["x", "o"]
puts even_splitters("banana") == ["b","a"]
puts even_splitters("mishmash") == ["m","h"]
