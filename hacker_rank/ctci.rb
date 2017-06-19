# n,k = gets.strip.split(' ')
# n = n.to_i
# k = k.to_i
# a = gets.strip
# a = a.split(' ').map(&:to_i)

# k.times { a << a.shift }
# puts a.join(' ')


# Anagrams

a = gets.strip
b = gets.strip

counter_a = Hash.new(0)
counter_b = Hash.new(0)

a.each_char {|el| counter_a[el] += 1}
b.each_char {|el| counter_b[el] += 1}

counter_a.merge!(counter_b){ |k, a_val, b_val| (a_val - b_val).abs }

puts counter_a.values.reduce(:+)