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

# Append and Delete

# Sample Input 0

# hackerhappy
# hackerrank
# 9
# Sample Output 0

# Yes

# Sample Input 1

# aba
# aba
# 7
# Sample Output 1

# Yes

# s = gets.strip
# t = gets.strip
# k = gets.strip.to_i


# shorter = (s.length < t.length) ? s : t
# i = 0
# while s[i] == t[i] && i < shorter.length
#     i += 1
# end

# min = s.length + t.length - 2 * i
# max = s.length + t.length

# if k >= max || (k >= min && (k - min) % 2 == 0)
#   puts "Yes"
# else
#   puts "No"
# end


# t = gets.strip.to_i
# arr = []
# t.times do
#   pair = gets.strip
#   arr << pair.split(' ').map(&:to_i)
# end

# arr.each do |pair|
#   puts Math.sqrt(pair[0]).ceil.upto(Math.sqrt(pair[1]).floor).size
# end


# Sample Input

# 9 6 2015
# 6 6 2015
# Sample Output

# 45

# d1,m1,y1 = gets.strip.split(' ')
# d1 = d1.to_i
# m1 = m1.to_i
# y1 = y1.to_i
# d2,m2,y2 = gets.strip.split(' ')
# d2 = d2.to_i
# m2 = m2.to_i
# y2 = y2.to_i

# if y1 - y2 > 0
#   puts 10000
# elsif m1 - m2 > 0 && y1 == y2
#   puts 500 * (m1 - m2)
# elsif d1 - d2 > 0 && y1 == y2 && m1 == m2
#   puts 15 * (d1 - d2)
# else
#   puts 0
# end

# Sample Input 0

# 6
# 5 4 4 2 2 8
# Sample Output 0

# 6
# 4
# 2
# # 1

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

until arr.empty?
  puts arr.size
  cut_length = arr.min
  arr.map!{ |el| el - cut_length }.select!{ |el| el > 0 }
end
