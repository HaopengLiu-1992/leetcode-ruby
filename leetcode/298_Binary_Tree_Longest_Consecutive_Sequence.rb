require_relative 'helper'

# Leetcode 298
class BinaryTreeLongestConsecutiveSequence
  def longest_consecutive(root)
    @max = 0
    dfs(root, TreeNode.new(0), 0)
    @max
  end

  def dfs(root, parent, len)
    return if root.nil?
    len = root.val == parent.val + 1 ? len + 1 : 1
    @max = [@max, len].max
    dfs(root.left, root, len)
    dfs(root.right, root, len)
  end
end
