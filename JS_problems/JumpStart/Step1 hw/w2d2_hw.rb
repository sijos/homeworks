# Even Splitters
# ------------------------------------------------------------------------------
# Return an array of characters on which we can split an input string to produce
# substrings of the same length.

# Don't count empty strings after the split.

# Here's an example for "banana":
#
# "banana".split("a") # => ["b", "n", "n"] (all elements same length)
# "banana".split("b") # => ["", "anana"] (all elements same length - there's only
# one element "anana" because the empty string doesn't count)
# "banana".split("n") # => ["ba", "a", "a"] (all elements NOT same length)
#
# result: ["b", "a"]
#
# ------------------------------------------------------------------------------

def even_splitters(string)
  result = []
  i = 0

  # string.chars.each do |letter|
  #   next if result.include?(letter)

  #   split = string.split(letter).reject { |el| el.empty? } # .reject(&:empty?)
  #   arr = split.map { |el| el.length } # .map(&:length)

  #   if arr.all? { |el| el == arr[0] }
  #     result << letter
  #   end
  # end

  while i < string.length
    if !result.include?(string[i])
      split = string.split(string[i])
      arr = []
      j = 0

      while j < split.length
        if !arr.include?(split[j].length) && split[j].length != 0
          arr << split[j].length
        end
        j += 1
      end

      if arr.length <= 1
        result << string[i]
      end
    end

    i += 1
  end

  result
end

puts "-----Even Splitters----"
puts even_splitters("") == []
puts even_splitters("t") == ["t"]
puts even_splitters("jk") == ["j", "k"]
puts even_splitters("xoxo") == ["x", "o"]
puts even_splitters("banana") == ["b","a"]
puts even_splitters("mishmash") == ["m","h"]
