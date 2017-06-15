# Skittle Combos
# ----------------------------------------
# You have a bag of skittles. You want to know what every unique
# two-flavor combination tastes like. Write a method that takes in
# a bag of skittles and returns an array of every unique two-flavor
# combination that you could make from the bag, each in its own array.
# Each of the two-flavor arrays should be arranged alphabetically.

# ------- Switch roles after 15 minutes! -------

def skittle_combos(skittles)
end

puts "---------Skittle Combos----------"
puts (
  skittle_combos(["red", "orange", "green"]).include?(["orange", "red"]) &&
  skittle_combos(["red", "orange", "green"]).include?(["green", "red"]) &&
  skittle_combos(["red", "orange", "green"]).include?(["green", "orange"]))
puts (
  skittle_combos(["purple", "red", "yellow", "green", "red"]).include?(["purple", "red"]) &&
  skittle_combos(["purple", "red", "yellow", "green", "red"]).include?(["purple", "yellow"]) &&
  skittle_combos(["purple", "red", "yellow", "green", "red"]).include?(["green", "purple"]) &&
  skittle_combos(["purple", "red", "yellow", "green", "red"]).include?(["red", "yellow"]) &&
  skittle_combos(["purple", "red", "yellow", "green", "red"]).include?(["green", "red"]) &&
  skittle_combos(["purple", "red", "yellow", "green", "red"]).include?(["green", "yellow"]))
puts skittle_combos(["yellow", "yellow"]) == []


# ----------------- Read the solutions!
