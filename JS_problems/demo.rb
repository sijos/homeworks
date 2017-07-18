def every_other_letter(string)
  new_str = ""
  idx = 0
  while idx < string.length
    new_str << string[idx]if idx.even?
    idx += 1
  end
  new_str
end

def every_other_letter(string)
  new_str = ""
  idx = 0
  until idx == string.length
    if idx.even?
      new_str << string[idx]
    end
    idx += 1
  end
  new_str
end

puts "------Every Other Letter------"
puts every_other_letter("abcde") #== "ace"
puts every_other_letter("i heart ruby") == "ihatrb"
puts every_other_letter("an apple a day...") == "a pl  a.." 