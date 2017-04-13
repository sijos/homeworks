require_relative 'p02_hashing'

class HashSet
  attr_reader :count

  def initialize(num_buckets = 8)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(key)
    resize! if @count == num_buckets
    hashed = key.hash
    self[hashed] << hashed
    @count += 1
  end

  def include?(key)
    hashed = key.hash
    self[hashed].include?(hashed)
  end

  def remove(key)
    hashed = key.hash
    self[hashed].delete(hashed)
    @count -= 1
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
    @store[num % num_buckets]
  end

  def num_buckets
    @store.length
  end

  def resize!
    old_store = @store
    @count = 0
    @store = Array.new(num_buckets * 2) { Array.new }
    
    old_store.flatten.each do |hashed|
      self[hashed] << hashed
      @count +=1
    end
  end
end
