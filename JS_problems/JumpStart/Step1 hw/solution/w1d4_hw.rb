# Two-Sum

# Define a method, #two_sum, that accepts an array and a target sum (integer) as arguments.
# The method should return true if any two integers in the array sum to the target.
# Otherwise, it should return false. Assume the array will only contain integers.

# def two_sum(array, target)
#   i = 0

#   while i < array.length - 1
#     j = i + 1
#     while j < array.length
#       return true if array[i] + array[j] == target
#       j += 1
#     end

#     i += 1
#   end

#   false
# end

# def two_sum(array, target)
#   hash = Hash.new(0)

#   array.each do |el|
#     hash[el] += 1
#   end

#   array.each do |el|
#     next if hash[target - el].zero?
#     if target - el == el
#       return true if hash[target - el] > 1
#     else
#       return true
#     end
#   end

#   false
# end

def two_sum(array, target)
  found = Hash.new(false)
  goal = nil

  array.each do |el|
    goal = (target - el).abs
    return true if found[goal] && goal + el == target
    found[el] = true
  end

  false
end

puts "------Two Sum------"
puts two_sum([1,2,3,4,5,6], 8) == true
puts two_sum([1,2,3,4,5,6], 18) == false
puts two_sum([1,3,6], 6) == false
puts two_sum([1,8,2,1], 0) == false
puts two_sum([1,3,3,6], 6) == true
