# def super_reduced_string(s)
#   i = 0
#   chars = s.chars
#   while i < chars.length
#     if chars[i] == chars[i + 1]
#       chars = chars[0...i] + chars[(i + 2)...chars.length]
#       i = 0
#     else
#       i += 1
#     end
#   end
  
#   chars.empty? ? "Empty String" : chars.join('')
# end

# s = gets.strip
# result = super_reduced_string(s)
# puts result;


# s = gets.strip
# lower = s.downcase
# i = 0
# counter = 0
# while i < s.length
#   counter += 1 if s[i] != lower[i]
#   i += 1
# end
# puts counter + 1

# len = gets.strip.to_i
# s = gets.strip

# def check(word)
#   for i in (0..word.length - 1)
#     return false if word[i] == word[i+1]
#   end
#   word.chars.uniq.size <= 2
# end

# valid_words = []
# letters = s.chars.uniq
# pairs = []
# letters.each_with_index do |el1, i1|
#   letters.each_with_index do |el2, i2|
#     pairs << [el1, el2] unless i1 == i2 || pairs.include?([el2, el1])
#   end
# end

# pairs.each do |pair|
#   temp = s.chars.select{|el| pair.include?(el)}.join('')
#   valid_words << temp if check(temp)
# end

# puts valid_words.empty? ? 0 : valid_words.max_by(&:length).length


# Sample Input

# 11
# middle-Outz
# 2

# Sample Output

# okffng-Qwvb

n = gets.strip.to_i
s = gets.strip
k = gets.strip.to_i

lower = ('a'..'z').to_a
upper = ('A'..'Z').to_a

new_str = ""

s.each_char do |ch|
  if lower.include?(ch)
    new_str << lower[((lower.index(ch) + k) % 26)]
  elsif upper.include?(ch)
    new_str << upper[((upper.index(ch) + k) % 26)]
  else
    new_str << ch
  end
end

puts new_str
    