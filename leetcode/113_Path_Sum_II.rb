# Leetcode 113
class PathSumII
  def path_sum(root, sum)
    @res = []
    path_sum_helper(root, sum, [])
    @res
  end

  def path_sum_helper(root, sum, pre)
    return if root.nil?
    if root.left.nil? && root.right.nil? && sum == root.val
      pre << root.val
      @res << pre
      return
    end
    pre << root.val
    sum -= root.val
    path_sum_helper(root.left, sum, Array.new(pre))
    path_sum_helper(root.right, sum, Array.new(pre))
  end
end
