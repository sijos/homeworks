# Hipsterfy

# Define a method, #hipsterfy, that accepts a sentence (string) as an argument.
# The method should return a new string with the last vowel removed from each word.

# 'y' is not a vowel. If a word has no vowels, don't change it. You may assume all
# letters are lower-case.

# ex. hipsterfy("towel flicker banana") => "towl flickr banan"

def hipsterfy(sentence)
  sentence.split.map{ |word| hip_word(word) }.join(' ')
end

def hip_word(word)
  vowels = %w(a e i o u)
  needs_remove = true
  new_word = ""
  # rev = word.reverse
  # last_v_index = rev.split('').index{|ch| vowels.include?(ch) }
  # return word unless last_v_index
  # word[0...last_v_index] + word[(last_v_index + 1)..-1]

  idx = word.length - 1
  while idx >= 0
    if needs_remove && vowels.include?(word[idx])
      needs_remove = false
    else
      new_word << word[idx]
    end
    idx -= 1
  end
  new_word.reverse
end


puts "-------Hipsterfy-------"
puts hipsterfy("proper") == "propr"
puts hipsterfy("mstrkrft") == "mstrkrft"
puts hipsterfy("towel flicker banana") == "towl flickr banan"
puts hipsterfy("turtle cheeseburger fries") == "turtl cheeseburgr fris"