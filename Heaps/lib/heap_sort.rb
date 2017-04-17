require_relative "heap"

class Array
  def heap_sort!
    heap = BinaryMinHeap.new { |el1, el2| el1 <=> el2 }

    self.each {|el| heap.push(el) }

    self.each_index do |i|
      self[i] = heap.extract
    end

  end
end
