# def calculate(starting_value, operations)
#  result = starting_value

#  operations.each do |op|
#   p starting_value
#   p op
#    if op[0] == "+"
#      result += op[1]

#    elsif op[0] == "-"
#      result -= op[1]

#    elsif op[0] == "*"
#      result *= op[1]

#    elsif op[0] == "/"
#      result /= op[1]
#    end
#  end
#  result
# end

# calculate(3, [["*", 5]])

def vigenere_cipher(string, key_sequence)
 alphabet = ("a".."z").to_a
 i = 0

 encrypted = string.chars.map do |c|
   alpha_idx = alphabet.index(c)
   encoded = alphabet[(alpha_idx + key_sequence[i]) % 26]
   i += 1
   if i == key_sequence.length
     i = 0
   end
   encoded
 end
 encrypted.join
end

p vigenere_cipher("bananasinpajamas", [1,2,3])