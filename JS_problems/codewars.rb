def replace_dashes_as_one(s)
  new_str = ""
  i = 0
  while i < s.length
    new_str << s[i]
    if s[i] == "-"
      i += 1 until s[i+1] != "-" && s[i+1] != " "
      new_str << " " if s[i] == " "
    end
    i += 1
  end
  new_str
end

puts '----Replace Dashes As One----'
puts replace_dashes_as_one("we-are- - - code----warriors.-") == "we-are- code-warriors.-"
puts replace_dashes_as_one("a---b- - -c") == "a-b-c"
puts replace_dashes_as_one("a------") == "a-"