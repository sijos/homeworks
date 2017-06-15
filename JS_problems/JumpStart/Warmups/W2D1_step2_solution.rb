# Skittle Combos
# ----------------------------------------
# You have a bag of skittles. You want to know what every unique
# two-flavor combination tastes like. Write a method that takes in
# a bag of skittles and returns an array of every unique two-flavor
# combination that you could make from the bag, each in its own array.
# Each of the two-flavor arrays should be arranged alphabetically.

def skittle_combos(skittles)
  skittles.combination(2).map(&:sort).uniq
end

def skittle_combos2(skittles)
  answer = []
  skittles.each do |color1|
    skittles.each do |color2|
      next if color1 == color2
      combo = [color1, color2].sort
      answer << combo unless answer.include?(combo)
    end
  end
  answer
end

## Discussion topics:
#   * How easy / difficult is the first solution to read?
#     * How might you break it up for better readability?
#   * What does the next statement do on line 41?
#   * What does the #combination method do?
#   * What does the #uniq method do?
