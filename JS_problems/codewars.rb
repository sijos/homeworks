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

def iq_test(numbers)
  arr = numbers.split.map(&:to_i)
  diff = arr.count(&:even?) > arr.count(&:odd?) ? arr.select(&:odd?)[0] : arr.select(&:even?)[0]
  arr.index(diff) + 1
end

def dig_pow(n, p)
    digits = n.to_s.split('').map(&:to_i)
    sum = digits.map.with_index {|el, i| el ** (p + i)}.inject(:+)
    sum % n == 0 ? (sum / n) : -1
end

def find_even_index(arr)
  arr.each_index do |i|
    left = i == 0 ? 0 : arr[0..(i-1)].reduce(:+)
    right = i == arr.length - 1 ? 0 : arr[(i+1)..-1].reduce(:+)
    return i if left == right
  end
  -1
end

def accum(s)
	result = ""
  s.chars.each_with_index do |ch, idx|
    result << ch.upcase
    idx.times { result << ch.downcase }
    result << "-" unless idx == s.length - 1
  end
  result
end

def find_it(seq)
  seq.each { |n| return n if seq.count(n).odd? }
end

def repeat_str (n, s)
  s * n
end