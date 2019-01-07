# Leetcode 965
class UnivaluedBinaryTree
  def unival_tree?(root)
    return true unless root
    if is_unival_tree(root.left) && is_unival_tree(root.right)
      check = true
      check = false if root.left && root.left.val != root.val
      check = false if root.right && root.right.val != root.val
      check
    else
      false
    end
  end
end
