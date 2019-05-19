# Leetcode 1026
class MaximumDifferenceBetweenNodeAndAncestor
  def max_ancestor_diff(root)
    @max = 0
    dfs(root.left, root.val, root.val)
    dfs(root.right, root.val, root.val)
    @max
  end

  def dfs(root, max, min)
    return if root.nil?
    if root.val > max
      @max = [root.val - min, @max].max
      max = root.val
    elsif root.val < min
      @max = [max - root.val, @max].max
      min = root.val
    end
    dfs(root.left, max, min)
    dfs(root.right, max, min)
  end
end
