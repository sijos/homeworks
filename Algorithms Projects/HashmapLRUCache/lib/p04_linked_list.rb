class Link
  attr_accessor :key, :val, :next, :prev

  def initialize(key = nil, val = nil)
    @key = key
    @val = val
    @next = nil
    @prev = nil
  end

  def to_s
    "#{@key}: #{@val}"
  end

  def remove
    @next.prev = @prev
    @prev.next = @next
  end
end

class LinkedList
  include Enumerable

  def initialize
    @head = Link.new
    @tail = Link.new
    @head.next = @tail
    @tail.prev = @head
  end

  def [](i)
    each_with_index { |link, j| return link if i == j }
    nil
  end

  def first
    @head.next
  end

  def last
    @tail.prev
  end

  def empty?
    @head.next == @tail
  end

  def get(key)
    self.each { |link| return link.val if link.key == key }
    nil
  end

  def include?(key)
    self.any? { |link| link.key == key }
  end

  def append(key, val)
    new_link = Link.new(key, val)
    new_link.next = @tail
    new_link.prev = last
    last.next = new_link
    @tail.prev = new_link
  end

  def update(key, val)
    self.each { |link| link.val = val if link.key == key }
  end

  def remove(key)
    self.each { |link| link.remove if link.key == key }
  end

  def each(&prc)
    i = first
    until i == @tail
      prc.call(i)
      i = i.next
    end
    self
  end

  def to_s
    inject([]) { |acc, link| acc << "[#{link.key}, #{link.val}]" }.join(", ")
  end
end
