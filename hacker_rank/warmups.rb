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

n = gets.strip.to_i

(1..n).each do |stair_num|
  spaces = n - stair_num
  puts (" " * spaces) + ("#" * stair_num)
end