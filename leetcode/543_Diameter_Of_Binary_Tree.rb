# Leetcode 543
class DiameterOfBinaryTree
  def diameter_of_binary_tree(root)
    @max_len = 1
    max_length(root)
    @max_len - 1
  end

  def max_length(root)
    return 0 if root.nil?
    left = max_length(root.left)
    right = max_length(root.right)
    @max_len = [@max_len, left + 1 + right].max
    [left, right].max + 1
  end
end
