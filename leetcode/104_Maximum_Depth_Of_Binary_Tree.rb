require_relative 'helper'
# Leetcode 104
class MaximumDepthOfBinaryTree
  include Helper::TreeHelper
  def max_depth(root)
    root.nil? ? 0 : [max_depth(root.left), max_depth(root.right)].max + 1
  end
end
