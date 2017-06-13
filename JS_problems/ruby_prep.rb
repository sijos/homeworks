# Compound Words

# Define a method, #compound_words?(word_list, target), that accepts 2 arguments:
# an array of words and a target, compound word. Check to see if any two words
# in the list can be combined to make the compound word. Don't double-use words.


def compound_words?(array, target)
  array.each_with_index do |word1, idx1|
    array.each_with_index do |word2, idx2|
      return true if word1 + word2 == target && idx1 != idx2
    end
  end
  false
end

puts "------Compound Words------"
puts compound_words?(["ice", "cream"], "icecream") == true
puts compound_words?(["cake", "candle", "cup", "wish"], "cupcake") == true
puts compound_words?(["hello", "bye", "greetings"], "byebye") == false
puts compound_words?(["bye", "bye", "greetings"], "byebye") == true

# You have 100 cats.
#
# Your rules are simple: whenever you visit a cat, you toggle it's hat status (if it
# already has a hat, you remove it.. if it does not have a hat, you put one on).
# All of the cats start hat-less. You cycle through 100 rounds of visiting cats.
# In the 1st round, you visit every cat. In the second round, you visit every other cat.
# In the nth round, you visit every nth cat.. until the 100th round, in which you only
# visit the 100th cat.
#
# At the end of 100 rounds, which cats have hats?

def cats_in_hats
  cats = [false] * 100

  (1..100).each do |pass_num|
    cats.each_index do |cat_idx|
      cats[cat_idx] = !cats[cat_idx] if (cat_idx + 1) % pass_num == 0
    end
  end
  
  hatted = []
  cats.each_with_index do |cat, idx|
    hatted << idx + 1 if cat
  end
  hatted
end

puts "------Cats in Hats------"
puts cats_in_hats == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]

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

def even_splitters(string)
  result = []

  string.chars.each do |char|
    splits = string.split(char).reject { |el| el == "" }
    result << char if splits.all? {|split| split.length == splits.first.length }
  end
  
  result.uniq
end

puts "-----Even Splitters----"
puts even_splitters("") == []
puts even_splitters("t") == ["t"]
puts even_splitters("jk") == ["j", "k"]
puts even_splitters("xoxo") == ["x", "o"]
puts even_splitters("banana") == ["b","a"]
puts even_splitters("mishmash") == ["m","h"]