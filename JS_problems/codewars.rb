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


def mult_triangle(n)
  return [1, 0, 1] if n == 1
  total = 0
  evens = 0
  (1..n).each do |k|
    (k...(k**2)).step(k) do |j|
      total += j*2
      evens += j*2 if j.even?
    end
    total += (k**2)
    evens += (k**2) if (k**2).even?
  end
  [total, evens, total - evens]
end