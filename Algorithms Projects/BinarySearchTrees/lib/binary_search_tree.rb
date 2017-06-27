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

end
