
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

# def cats_in_hats
#   cats = [0] * 100
#   hatted =  []

#   (1..100).each do |pass_num|
#     cats.each_index do |cat_idx|
#       cats[cat_idx] = !cats[cat_idx] if (cat_idx + 1) % pass_num == 0
#     end
#   end

#   cats.each_with_index do |cat, idx|
#     hatted << (idx + 1) if cat
#   end

#   hatted
# end

def cats_in_hats
  cats = {}
  (1..100).each { |n| cats[n] = 0 }
  step_num = 1

  until step_num > 100
    (0..100).step(step_num) do |cat_num|
      next if cat_num == 0
      cats[cat_num] = !cats[cat_num]
    end
    step_num += 1
  end
  
  cats.select {|num, val| val == true }.keys
end


puts "------Cats in Hats------"
puts cats_in_hats == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]