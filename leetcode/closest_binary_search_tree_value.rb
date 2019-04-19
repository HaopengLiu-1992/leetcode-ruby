# Leetcode 270
class ClosestBinarySearchTreeValue
  def closest_value(root, target)
    close = (root.val - target).abs
    @num = root.val
    search_tree(root, target, close)
    @num
  end

  def search_tree(root, target, close)
    return if root.nil?
    if (root.val.to_f - target).abs < close
      close = (root.val.to_f - target).abs
      @num = root.val
    end
    search_tree(root.left, target, close)
    search_tree(root.right, target, close)
  end
end
