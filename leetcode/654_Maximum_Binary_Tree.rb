# Leetcode 654
class MaximumBinaryTree
  def construct_maximum_binary_tree(nums)
    return nil if nums.empty?
    max = nums.max
    root = TreeNode.new(max)
    index = nums.index(max)
    root.left = construct_maximum_binary_tree(nums[0...index])
    root.right = construct_maximum_binary_tree(nums[index + 1...nums.length])
    root
  end
end
