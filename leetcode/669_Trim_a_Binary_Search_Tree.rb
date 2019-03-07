# Leetcode 669
class TrimABinarySearchTree
  def trim_bst(root, l, r)
    return nil if root.nil?
    return trim_bst(root.right, l, r) if root.val < l
    return trim_bst(root.left, l, r) if root.val > r
    root.left = trim_bst(root.left, l, r)
    root.right = trim_bst(root.right, l, r)
    root
  end
end
