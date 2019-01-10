# Leetcode 951
class FlipEquivalentBinaryTrees
  def flip_equiv(root1, root2)
    return true if root1.nil? && root2.nil?
    return false if root1.nil? || root2.nil?
    return false if root1.val != root2.val
    if flip_equiv(root1.left, root2.left) && flip_equiv(root1.right, root2.right)
      true
    elsif flip_equiv(root1.left, root2.right) && flip_equiv(root1.right, root2.left)
      true
    else
      false
    end
  end
end
