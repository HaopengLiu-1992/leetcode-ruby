# Leetcode 235
class LowestCommonAncestorOfABinarySearchTree
  def lowest_common_ancestor(root, p, q)
    min = [p.val, q.val].min
    max = [p.val, q.val].max
    return root if (root.val > min && root.val < max) || root.val == min || root.val == max
    return lowest_common_ancestor(root.left, p, q) if root.val > min && root.val > max
    lowest_common_ancestor(root.right, p, q) if root.val < min && root.val < max
  end
end
