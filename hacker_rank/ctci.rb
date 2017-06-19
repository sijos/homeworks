# n,k = gets.strip.split(' ')
# n = n.to_i
# k = k.to_i
# a = gets.strip
# a = a.split(' ').map(&:to_i)

# k.times { a << a.shift }
# puts a.join(' ')


# Anagrams

# a = gets.strip
# b = gets.strip

# counter_a = Hash.new(0)
# counter_b = Hash.new(0)

# a.each_char {|el| counter_a[el] += 1}
# b.each_char {|el| counter_b[el] += 1}

# counter_a.merge!(counter_b){ |k, a_val, b_val| (a_val - b_val).abs }

# puts counter_a.values.reduce(:+)

# Ransom Note
# Sample Input 0

# 6 4
# give me one grand today night
# give one grand today

# Sample Output 0

# Yes

# Sample Input 1

# 6 5
# two times three is not four
# two times two is four

# Sample Output 1

# No

m,n = gets.strip.split(' ')
m = m.to_i
n = n.to_i
magazine = gets.strip
magazine = magazine.split(' ')
ransom = gets.strip
ransom = ransom.split(' ')

if n > m
  puts "No"
else
  mag_words = Hash.new(0)
  note_words = Hash.new(0)
  magazine.each { |w| mag_words[w] += 1 }
  ransom.each { |w| note_words[w] += 1 }

  puts mag_words.all?{ |k, v| v >= note_words[k] } ? "Yes" : "No"
end