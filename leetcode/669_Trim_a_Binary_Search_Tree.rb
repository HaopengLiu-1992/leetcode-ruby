# Leetcode 669g
class TrimABinarySearchTree
  def trim_bst(root, l, r)
    return nil if root.nil?
    return if trim_bst(root.right, l, r) if root.val < l
    return if trim_bst(root.left, l, r) if root.val > r
    root.left = trim_bst(root.left, l, r)
    root.right = trim_bst(root.right, l, r)
    root
  end
end
