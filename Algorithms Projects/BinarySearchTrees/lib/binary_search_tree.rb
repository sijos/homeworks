# There are many ways to implement these methods, feel free to add arguments 
# to methods as you see fit, or to create helper methods.
require_relative 'bst_node'

class BinarySearchTree
  attr_accessor :root
  
  def initialize
    @root = nil
  end

  def insert(value, tree_node = @root)
    if @root.nil?
      @root = BSTNode.new(value)
      return
    end
    
    if value > tree_node.value
      if tree_node.right
        insert(value, tree_node.right)
      else
        tree_node.right = BSTNode.new(value)
      end
    else
      if tree_node.left
        self.insert(value, tree_node.left)
      else
        tree_node.left = BSTNode.new(value)
      end
    end
  end

  def find(value, tree_node = @root)
    return nil if tree_node.nil?
    return tree_node if value == tree_node.value

    if value > tree_node.value
      find(value, tree_node.right)
    else
      find(value, tree_node.left)
    end
  end

  def delete(value)
    target_node = find(value)
    return nil if target_node.nil?

    parent_node = parent(target_node.value) unless target_node == @root
    if !target_node.right && !target_node.left
      if target_node == @root
        @root = nil
      else
        remove_child(parent_node, target_node)
      end
    elsif target_node.right && target_node.left
      # find max of left and promote
      left_max = maximum(target_node.left)

    else
      # remove and promote child
      if target_node.right
        parent_node.right = target_node.right
      else
        parent_node.left = target_node.left
      end
    end
  end

  # helper method for #delete:
  def maximum(tree_node = @root)
    current_node = tree_node
    current_node = current_node.right until current_node.right.nil?
    current_node
  end

  def depth(tree_node = @root)
  end 

  def is_balanced?(tree_node = @root)
  end

  def in_order_traversal(tree_node = @root, arr = [])
  end


  private
  # optional helper methods go here:
  def parent(value, tree_node = @root)
    return nil if tree_node.nil?

    if value > tree_node.value
      if tree_node.right.value == value
        return tree_node 
      else
        parent(value, tree_node.right)
      end
    else
      if tree_node.left.value == value
        return tree_node
      else
        parent(value, tree_node.left)
      end
    end
  end

  def remove_child(parent, child)
    if parent.right == child
      parent.right = nil
    else
      parent.left = nil
    end
  end
end
