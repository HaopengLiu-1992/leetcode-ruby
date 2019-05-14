# Leetcode 865
class SmallestSubtreeWithAllTheDeepestNodes
  def subtree_with_all_deepest(root)
    return root if root.nil?
    left = max_depth(root.left)
    right = max_depth(root.right)
    return root if left == right
    if left > right
      subtree_with_all_deepest(root.left)
    else
      subtree_with_all_deepest(root.right)
    end
  end

  def max_depth(root)
    return 0 if root.nil?
    [max_depth(root.left), max_depth(root.right)].max + 1
  end
end
