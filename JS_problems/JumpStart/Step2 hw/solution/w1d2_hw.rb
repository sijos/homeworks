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
  # cats = Hash[(1..100).map{ |cat| [cat, ""] }]
  cats = Hash[(1..100).map{ |cat| [cat, false] }]
  visit = 1

  until visit > 100
    (0..100).step(visit) do |cat_idx|
      next if cat_idx == 0
      cats[cat_idx] = !cats[cat_idx]
    end
    visit += 1
  end
p cats
  p cats.select{ |cat_idx, cat| cat }.keys
end

# def cats_in_hats
#   arr = Array.new(101) { false }

#   visit = 1
#   while visit <= 100
#     i = 0
#     while i <= 100
#       if i % visit == 0
#         arr[i] = !arr[i]
#       end
#       i += 1
#     end

#     visit += 1
#   end

#   result = []
#   i = 0
#   while i < arr.length
#     result << i if arr[i]
#     i += 1
#   end

#   p result
# end

# def cats_in_hats
#   arr = Array.new(Math.sqrt(100))
#   arr.map.with_index do |n, i|
#     (i + 1) ** 2
#   end
# end

puts "------Cats in Hats------"
p cats_in_hats == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
