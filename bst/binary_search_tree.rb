require_relative 'bst_node'

class BinarySearchTree
  attr_accessor :root

  def initialize
    @root = nil
  end

  def find(val, start)
    return true if val == start.val
    if val < start.val
      return false unless start.left
      find(val, start.left)
    else
      return false unless start.right
      find(val, start.right)
    end
  end

  def insert(el, start)
    if !root
      root = BSTNode.new(el)
      return
    end
    
    if el < start.val
      if !start.left
        start.left = BSTNode.new(el)
      else
        insert(el, start.left)
      end
    else
      if !start.right
        start.right = BSTNode.new(el)
      else
        insert(el, start.right)
      end
    end
  end

  def delete(el)
  end

  def is_balanced?
  end

  def in_order_traversal
  end

  def maximum
  end

  def depth
  end 
end
