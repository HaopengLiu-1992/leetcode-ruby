# Leetcode 112
class PathSum
  def path_sum?(root, sum)
    return false unless root
    return true if root.left.nil? && root.right.nil? && sum == root.val
    path_sum?(root.left, sum - root.val) || path_sum?(root.right, sum - root.val)
  end
end
