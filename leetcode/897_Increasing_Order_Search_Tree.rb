# leetcode 897
class IncreasingOrderSearchTree
  def increasing_bst(root)
    order = in_order(root)
    (1...order.length).each { |i| order[i - 1].right = order[i] }
    order[0]
  end

  def in_order(root)
    return [] if root.nil?
    left = in_order(root.left)
    left << TreeNode.new(root.val)
    left + in_order(root.right)
  end
end
