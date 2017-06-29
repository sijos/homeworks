class Fixnum
  # Fixnum#hash already implemented for you
end

class Array
  def hash
    magic_num = 42
    self.each_with_index do |el, idx|
      magic_num += el.hash * (idx + 1)
    end
    magic_num
  end
end

class String
  def hash
    self.chars.map(&:ord).hash
  end
end

class Hash
  def hash
    self.keys.sort.concat(self.values.sort).hash
  end
end
