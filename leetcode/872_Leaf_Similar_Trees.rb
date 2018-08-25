require_relative 'helper'

# Leetcode 872
class LeafSimilarTrees
  include Helper::TreeHelper
  def leaf_similar(root1, root2)
    get_leaves(root1) == get_leaves(root2)
  end

  def get_leaves(root)
    return [] if root.nil?
    return [root.val] if root.left.nil? && root.right.nil?
    left = get_leaves_from_left_to_right(root.left)
    right = get_leaves_from_left_to_right(root.right)
    left + right
  end
end
