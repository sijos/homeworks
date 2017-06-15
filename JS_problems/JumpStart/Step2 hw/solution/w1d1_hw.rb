# Compound Words

# Define a method, #compound_words?(word_list, target), that accepts 2 arguments:
# an array of words and a target, compound word. Check to see if any two words
# in the list can be combined to make the compound word. Don't double-use words.


def compound_words?(array, target)
  array.each_with_index do |word1, i|
    array.each_with_index do |word2, j|
      next if i == j
      return true if word1 + word2 == target
    end
  end
  false

  # str = array.select{ |el| target.include?(el) }.combination(2)
  # str.each do |el|
  #   return true if el.join == target || el.reverse.join == target
  # end
  #
  # false

  # array[0...-1].each_with_index do |word1, i|
  #   array[i + 1..-1].each do |word2|
  #     return true if word1 + word2 == target || word2 + word1 == target
  #   end
  # end
  # false
end

puts "------Compound Words------"
puts compound_words?(["ice", "cream"], "icecream") == true
puts compound_words?(["cake", "candle", "cup", "wish"], "cupcake") == true
puts compound_words?(["hello", "bye", "greetings"], "byebye") == false
puts compound_words?(["bye", "bye", "greetings"], "byebye") == true
