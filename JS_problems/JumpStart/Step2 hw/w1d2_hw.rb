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
#
# def cats_in_hats
#   # your code here
#   cats = Hash[(1..100).map {|cat, hat| [cat, ""] }]
#   visit = 1
#
#   until visit > 100
#     # (0..100).step(visit) do |idx|
#     (1..100).each do |idx|
#       next if idx % visit != 0
#       # cats[idx] = (cats[idx] == "" ? "hat" : "")
#       if cats[idx] == ""
#         cats[idx] = "hat"
#       else
#         cats[idx] = ""
#       end
#     end
#
#     visit += 1
#   end
#
#   cats.select { |key, value| value == "hat" }.keys
# end

def cats_in_hats
  arr = Array.new(Math.sqrt(100))
  arr.map.with_index do |n, i|
    (i + 1) ** 2
  end
end

puts "------Cats in Hats------"
puts cats_in_hats == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
