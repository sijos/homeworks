def hipsterfy(sentence)
  sentence.split(" ").map{|word| hip_word(word)}.join(" ")
end

def hip_word(word)
  vowels = %w(a e i o u)

  # idx = word.length - 1
  (word.length - 1).downto(0) do |idx|
    if vowels.include?(word[idx])
      word.slice!(idx)
      return word
    end
    # idx -= 1
  end

  word
end

puts "-------Hipsterfy-------"
puts hipsterfy("proper") == "propr"
puts hipsterfy("mstrkrft") == "mstrkrft"
puts hipsterfy("towel flicker banana") == "towl flickr banan"
puts hipsterfy("turtle cheeseburger fries") == "turtl cheeseburgr fris"