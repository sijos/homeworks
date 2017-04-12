require_relative "static_array"

class DynamicArray
  attr_reader :length

  def initialize
    @arr = StaticArray.new(0)
    @count = 0
  end

  # O(1)
  def [](index)
    raise "index out of bounds" unless index - 1 > @count
    @arr[index]
  end

  # O(1)
  def []=(index, value)
    raise "index out of bounds" unless index - 1 > @count
    @arr[index] = value
  end

  # O(1)
  def pop
    @arr[@count] = nil
    @count -= 1
  end

  # O(1) ammortized; O(n) worst case. Variable because of the possible
  # resize.
  def push(val)
    @arr[@count] = val
    @count += 1
  end

  # O(n): has to shift over all the elements.
  def shift
  end

  # O(n): has to shift over all the elements.
  def unshift(val)
  end

  protected
  attr_accessor :capacity, :store
  attr_writer :length

  def check_index(index)
  end

  # O(n): has to copy over all the elements to the new store.
  def resize!
  end
end
