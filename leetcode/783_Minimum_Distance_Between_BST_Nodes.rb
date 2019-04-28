# Leetcode 783
class MinimumDistanceBetweenBSTNodes
  def min_diff_in_bst(root)
    diff = 10_000_000_000
    arr = in_order(root)
    i = 0
    while i < arr.length - 1
      diff = [arr[i + 1] - arr[i], diff].min
      i += 1
    end
    diff
  end

  def in_order(root)
    return [] if root.nil?
    in_order(root.left) + [root.val] + in_order(root.right)
  end
end
