# Leetcode 663
class EqualTreePartition
  def check_equal_tree(root)
    build_sum_tree(root)
    @val = root.val.to_f / 2
    @check = false
    dfs(root.left)
    dfs(root.right)
    @check
  end

  def dfs(root)
    return if root.nil?
    @check = true if root.val == @val
    dfs(root.left)
    dfs(root.right)
  end

  def build_sum_tree(root)
    root.nil? ? 0 : root.val + build_sum_tree(root.left) + build_sum_tree(root.right)
  end
end
