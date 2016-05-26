# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end
require './TreeNode'

# @param {TreeNode} root
# @return {Integer}
def max_depth(root)
  return 0 if root.nil?

  depth, arr = 0, [root, nil]
  while true
    node = arr.shift
    if node.nil?
      depth += 1
      break if arr.empty?
      arr << nil
      next
    end
    arr << node.left if node.left
    arr << node.right if node.right
  end
  return depth
  # or recursive, one line
  # root ? 1 + [max_depth(root.left), max_depth(root.right)].max : 0
end

t1 = TreeNode.new(1); t2 = TreeNode.new(2); t3 = TreeNode.new(3)
t4 = TreeNode.new(4); t5 = TreeNode.new(5); t6 = TreeNode.new(6)
t1.right = t3;  t1.left = t2;  t2.right = t5; t2.left = t4;  t4.left = t6;
p max_depth(t1)

=begin
Given a binary tree, find its maximum depth.
The maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.

Demo
         1
        / \
       2   3
      / \
     4   5
    /
   6
=end
