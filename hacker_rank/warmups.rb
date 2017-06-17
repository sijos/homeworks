# Plus / Minus

# stdin: 
# 6
# -4 3 -9 0 4 1  

# stdout:
# 0.500000
# 0.333333
# 0.166667

# SOLUTION
# n = gets.strip.to_i
# arr = gets.strip
# arr = arr.split(' ').map(&:to_i)

# positive = arr.select{|el| el > 0}
# negative = arr.select{ |el| el < 0}
# zero = arr.select{ |el| el == 0}

# puts (positive.count.to_f / n).round(6)
# puts (negative.count.to_f / n).round(6)
# puts (zero.count.to_f / n).round(6)

# Staircase

# stdin:
# 6 

# stdout:
#      #
#     ##
#    ###
#   ####
#  #####
# ######

# SOLUTION

# n = gets.strip.to_i

# (1..n).each do |stair_num|
#   spaces = n - stair_num
#   puts (" " * spaces) + ("#" * stair_num)
# end


# Mini Max

# Sample Input

# 1 2 3 4 5
# Sample Output

# 10 14

# SOLUTION

# arr = gets.strip
# arr = arr.split(' ').map(&:to_i)

# sums = []
# (0..4).each do |idx|
#   temp = arr.dup
#   temp.delete_at(idx)
#   sums << temp.reduce(:+)
# end

# puts "#{sums.min} #{sums.max}"

# Birthday Cake

# Sample Input 0

# 4
# 3 2 1 3
# Sample Output 0

# 2

def birthdayCakeCandles(n, ar)
    tallest = ar.max
    ar.select{|el| el == tallest}.count
end

n = gets.strip.to_i
ar = gets.strip
ar = ar.split(' ').map(&:to_i)
result = birthdayCakeCandles(n, ar)
puts result;