require_relative 'helper'

# Leetcode 437
class PathSumIII
  @res = 0
  def path_sum(root, sum)
    return 0 if root.nil?
    dfs(root, sum) + path_sum(root.left, sum) + path_sum(root.right, sum)
  end

  def dfs(root, sum)
    return 0 if root.nil?
    (sum == root.val ? 1 : 0) + dfs(root.left, sum - root.val) + dfs(root.right, sum - root.val)
  end
end
