require_relative 'binary_search_tree'

bst = BinarySearchTree.new
[5, 3, 7, 1, 4, 9, 0, 2, 1.5, 10].each do |el|
  bst.insert(el)
end

par = bst.parent(1)

p "Parent of 9 is #{par.value}"