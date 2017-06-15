# Wild Sum

# Define a method, #wild_sum(n) that sums all the numbers less than n that are:
#   - Divisible by 2 or divisible by 3
#   - Not divisible by both 2 and 3

# ex: wild_sum(16) ==> 2 + 3 + 4 + 8 + 9 + 10 + 14 + 15 ==> 65

# def wild_sum(n)
#   (0...n).select{|e| (e % 2 == 0 || e % 3 == 0) && e % 6 != 0 }.reduce(0, :+)
# end

def wild_sum(n)
  sum = 0
  i = 0

  while i < n
    sum += i if (i % 2 == 0 || i % 3 == 0) && i % 6 != 0
    i += 1
  end

  sum
end

puts "------Wild Sum------"
puts wild_sum(0) == 0
puts wild_sum(2) == 0
puts wild_sum(3) == 2
puts wild_sum(7) == 9
puts wild_sum(16) == 65
