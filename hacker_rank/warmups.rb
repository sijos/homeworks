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

# def birthdayCakeCandles(n, ar)
#     tallest = ar.max
#     ar.select{|el| el == tallest}.count
# end

# n = gets.strip.to_i
# ar = gets.strip
# ar = ar.split(' ').map(&:to_i)
# result = birthdayCakeCandles(n, ar)
# puts result;

# Time Conversion

# Sample Input

# 07:05:45PM
# Sample Output

# 19:05:45

# def timeConversion(s)
#     return "12:00:00" if s == "12:00:00PM"
    
#     am_pm = s[8..9]
#     time = s[0..7].split(":")
#     time[0] = "00" if time[0] == "12" && am_pm == "AM"
#     time[0] = (time[0].to_i + 12).to_s if am_pm == "PM" && time[0].to_i < 12

#     time.join(":")
# end

# s = gets.strip
# result = timeConversion(s)
# puts result;

# Diagonal Difference

# Sample Input

# 3
# 11 2 4
# 4 5 6
# 10 8 -12

# Sample Output

# 15

n = gets.strip.to_i
a = Array.new(n)
for a_i in (0..n-1)
    a_t = gets.strip
    a[a_i] = a_t.split(' ').map(&:to_i)
end

sum1 = 0
sum2 = 0
col1 = 0
col2 = n - 1

for row in (0..n-1)
  sum1 += a[row][col1]
  sum2 += a[row][col2]
  col1 += 1
  col2 -= 1
end

puts (sum1 - sum2).abs
  