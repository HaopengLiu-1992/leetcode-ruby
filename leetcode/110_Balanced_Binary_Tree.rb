require_relative 'helper'

# Leetcode 100
class BalancedBinaryTree
  include Helper::TreeHelper
  def balanced?(root)
    return true if root.nil?
    val = depth(root.left) - depth(root.right)
    return false if val > 1 || val < -1
    is_balanced(root.left) && is_balanced(root.right)
  end

  def depth(root)
    return 0 if root.nil?
    1 + [depth(root.left), depth(root.right)].max
  end
end
