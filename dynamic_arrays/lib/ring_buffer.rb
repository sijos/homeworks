require_relative "static_array"

class RingBuffer
  attr_reader :length

  def initialize
    @store = StaticArray.new(8)
    @length = 0
    @capacity = 8
    @start_idx = 0
  end

  # O(1)
  def [](index)
    check_index(index)
    static_idx = (@start_idx + index) % @capacity
    @store[static_idx]
  end

  # O(1)
  def []=(index, val)
    check_index(index)
    static_idx = (@start_idx + index) % @capacity
    @store[static_idx] = val
  end

  # O(1)
  def pop
    raise "index out of bounds" if @length == 0
    last = self[@length - 1]
    @length -= 1
    last
  end

  # O(1) ammortized
  def push(val)
    resize! if @length == @capacity
    @length += 1
    self[@length - 1] = val
    @store
  end

  # O(1)
  def shift
    raise "index out of bounds" if @length == 0
    first = self[0]
    @length -= 1
    @start_idx += 1
    first
  end

  # O(1) ammortized
  def unshift(val)
    resize! if @length == @capacity
    @length += 1
    @start_idx -= 1
    self[0] = val
    @store
  end

  protected
  attr_accessor :capacity, :start_idx, :store
  attr_writer :length

  def check_index(index)
    raise "index out of bounds" unless index >= 0 && index < @length
  end

  def resize!
    new_arr = StaticArray.new(@capacity * 2)
    (0...@length).each do |idx|
      new_idx = idx + @start_idx
      new_arr[new_idx] = @store[new_idx % @capacity]
    end
    @capacity *= 2
    @store = new_arr
  end
end
