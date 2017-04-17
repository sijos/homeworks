class BinaryMinHeap
  def initialize(&prc)
    @store = []
  end

  def count
    store.length
  end

  def extract
    extracted = store[0]
    if count > 1
      store[0] = store.pop
      self.class.heapify_down(store, 0, &prc)
    else
      store.pop
    end
    extracted
  end

  def peek
    store[0]
  end

  def push(val)
    store << val
    self.class.heapify_up(store, self.count - 1, &prc)
  end

  protected
  attr_accessor :prc, :store

  public
  def self.child_indices(len, parent_index)
    children = [((2 * parent_index) + 1), ((2 * parent_index) + 2)]
    children.select { |idx| idx < len }
  end

  def self.parent_index(child_index)
    raise "root has no parent" if child_index <= 0
    (child_index - 1) / 2
  end

  def self.heapify_down(array, parent_idx, len = array.length, &prc)
    prc ||= Proc.new { |el1, el2| el1 <=> el2 }

    left_idx, right_idx = child_indices(len, parent_idx)
    children = child_indices(len, parent_idx).map { |idx| array[idx] }
    parent = array[parent_idx]

    if children.all? { |child| prc.call(parent, child) <= 0 }
      return array
    end

    if children.length == 1
      swap_idx = left_idx
    else
      swap_idx = prc.call(children[0], children[1]) < 0 ? left_idx : right_idx
    end
    
    array[parent_idx], array[swap_idx] = array[swap_idx], array[parent_idx]
    heapify_down(array, swap_idx, len, &prc) 
  end

  def self.heapify_up(array, child_idx, len = array.length, &prc)
    prc ||= Proc.new { |el1, el2| el1 <=> el2 }

    return array if child_idx == 0

    parent_idx = parent_index(child_idx)
    parent = array[parent_idx]
    child = array[child_idx]

    if prc.call(child, parent) >= 0
      return array
    end
    
    array[parent_idx], array[child_idx] = array[child_idx], array[parent_idx]
    heapify_up(array, parent_idx, len, &prc)
  end
end
