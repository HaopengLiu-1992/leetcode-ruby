require_relative 'helper'

# Leetcode 100
class SameTree
  include Helper::TreeHelper
  def same_tree?(p, q)
    return true if p.nil? && q.nil?
    return false if p.nil? || q.nil?
    return false if p.val != q.val
    is_same_tree(p.left, q.left) && is_same_tree(p.right, q.right)
  end
end
