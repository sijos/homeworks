# Compound Words

# Define a method, #compound_words?(word_list, target), that accepts 2 arguments:
# an array of words and a target, compound word. Check to see if any two words
# in the list can be combined to make the compound word. Don't double-use words.


# def compound_words?(array, target)
#   array.each_with_index do |el1, idx1|
#     array.each_with_index do |el2, idx2|
#       return true if el1 + el2 == target && idx1 != idx2
#     end
#   end
#   false
# end

# puts "------Compound Words------"
# puts compound_words?(["ice", "cream"], "icecream") == true
# puts compound_words?(["cake", "candle", "cup", "wish"], "cupcake") == true
# puts compound_words?(["hello", "bye", "greetings"], "byebye") == false
# puts compound_words?(["bye", "bye", "greetings"], "byebye") == true

 # Define a method that, given a sentence, returns a hash of each of the words as
 # keys with their lengths as values. Assume the argument lacks punctuation.
def word_lengths(str)
  hash = {}

  str.split(' ').each do |word|
    hash[word] = word.length
  end
  hash
end

test_sent = "this is a test sentence"
new_hash = word_lengths(test_sent)
p new_hash.keys
p new_hash.values
p new_hash.select{|key, value| value >= 3}
