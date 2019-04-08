# Leetcode 230
class KthSmallestElementInABST
  def kth_smallest(root, k)
    inorder(root)[k - 1]
  end

  def inorder(root)
    root.nil? ? [] : inorder(root.left) + [root.val] + inorder(root.right)
  end
end
