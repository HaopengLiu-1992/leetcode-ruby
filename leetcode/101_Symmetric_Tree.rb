# Leetcode 101
class SymmetricTree
  def symmetric?(root)
    symmetric(root, root)
  end

  def symmetric(r1, r2)
    return true if r1.nil? && r2.nil?
    return false if r1.nil? || r2.nil?
    r1.val == r2.val && symmetric(r1.left, r2.right) && symmetric(r1.right, r2.left)
  end
end
