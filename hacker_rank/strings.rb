def super_reduced_string(s)
  i = 0
  chars = s.chars
  while i < chars.length
    if chars[i] == chars[i + 1]
      chars = chars[0...i] + chars[(i + 2)...chars.length]
      i = 0
    else
      i += 1
    end
  end
  
  chars.empty? ? "Empty String" : chars.join('')
end

s = gets.strip
result = super_reduced_string(s)
puts result;