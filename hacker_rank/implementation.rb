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

# n = gets.strip.to_i
# arr = gets.strip
# arr = arr.split(' ').map(&:to_i)

# until arr.empty?
#   puts arr.size
#   cut_length = arr.min
#   arr.map!{ |el| el - cut_length }.select!{ |el| el > 0 }
# end


# Sample Input

# 4 3
# 1 7 2 4
# Sample Output

# 3

# nk = gets.strip
# nk = nk.split(' ').map(&:to_i)
# n = nk[0]
# k = nk[1]
# arr = gets.strip
# arr = arr.split(' ').map(&:to_i)

# remainders = [0] * k
# arr.each{|val| remainders[val % k] += 1}

# count = 0
# count += [remainders[0], 1].min

# (1..(remainders.length / 2)).each do |i|
#   if i != remainders.length - i
#     count += [remainders[i], remainders[remainders.length - i]].max
#   else
#     count += [remainders[i], 1].min
#   end
# end

# puts count

# conflicts = {}
# arr.each { |num| conflicts[num] = 0 }
# arr.each do |n1|
#   others = arr.dup.reject{|el| el == n1}
#   others.each do |n2|
#     conflicts[n1] += 1 if (n1 + n2) % k == 0
#   end
# end

# until conflicts.values.reduce(:+) == 0
#   worst = conflicts.select{ |num, c| c == conflicts.values.max }
#   conflicts.each do |num, c|
#     conflicts[num] -= 1 if (worst.keys[0] + num) % k == 0
#   end
#   conflicts.delete(worst.keys[0])
# end

# puts conflicts.keys.size

# s = gets.strip
# n = gets.strip.to_i

# a_count = (n / s.length) * s.count('a')
# remainder = n % s.length
# remainder.times do |num|
#   a_count += 1 if s[num] == 'a'
# end

# puts a_count

# Sample Input 0

# 7
# 0 0 1 0 0 1 0

# Sample Output 0

# 4

# Sample Input 1

# 6
# 0 0 0 0 1 0

# Sample Output 1

# 3

# n = gets.strip.to_i
# c = gets.strip
# c = c.split(' ').map(&:to_i)

# position = 0
# jumps = 0

# until position == c.length - 1
#   if c[position + 2] == 0
#     position += 2
#   else
#     position += 1
#   end
#   jumps += 1
# end

# puts jumps

# n = gets.strip.to_i
# arr = gets.strip
# arr = arr.split(' ').map(&:to_i)

# counts = arr.inject(Hash.new(0)) { |h, v| h[v] += 1; h }
# most_common = arr.max_by { |v| counts[v] }

# puts arr.length - arr.select{|el| el == most_common}.length

# Sample Input 1

# 5 3
# 4 3
# 5 5
# 4 2
# 2 3

# Sample Output 1

# 10

n,k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
rQueen,cQueen = gets.strip.split(' ')
rQueen = rQueen.to_i
cQueen = cQueen.to_i
grid = Array.new(n) { Array.new(n) { false } }
for a0 in (0..k-1)
    rObstacle,cObstacle = gets.strip.split(' ')
    rObstacle = rObstacle.to_i
    cObstacle = cObstacle.to_i
    grid[n - rObstacle][cObstacle - 1] = "O"
end

grid[n - rQueen][cQueen - 1] = "Q"

# vertical
row = rQueen + 1
while row <= n && grid[n - row][cQueen - 1] != "O"
  grid[n - row][cQueen - 1] = true
  row += 1
end

row = rQueen - 1
while row > 0 && grid[n - row][cQueen - 1] != "O"
  grid[n - row][cQueen - 1] = true
  row -= 1
end

# horizontal
col = cQueen + 1
while col <= n && grid[n - rQueen][col - 1] != "O"
  grid[n - rQueen][col - 1] = true
  col += 1
end

col = cQueen - 1
while col > 0 && grid[n - rQueen][col - 1] != "O"
  grid[n - rQueen][col - 1] = true
  col -= 1
end

# diagonal
# up left
row = rQueen + 1
col = cQueen - 1
while row <= n && col > 0 && grid[n - row][col - 1] != "O"
  grid[n - row][col - 1] = true
  row += 1
  col -= 1
end

# down left
row = rQueen - 1
col = cQueen - 1
while row > 0 && col > 0 && grid[n - row][col - 1] != "O"
  grid[n - row][col - 1] = true
  row -= 1
  col -= 1
end

# up right
row = rQueen + 1
col = cQueen + 1
while row <= n && col <= n && grid[n - row][col - 1] != "O"
  grid[n - row][col - 1] = true
  row += 1
  col += 1
end

# down right
row = rQueen - 1
col = cQueen + 1
while row > 0 && col <= n && grid[n - row][col - 1] != "O"
  grid[n - row][col - 1] = true
  row -= 1
  col += 1
end

puts grid.flatten.count(true)