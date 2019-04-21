# Leetcode 114
class FlattenBinaryTreeToLinkedList
  def flatten(root)
    return if root.nil?
    flatten(root.left)
    flatten(root.right)
    left = root.left
    right = root.right
    return if left.nil?
    left_end = left
    left_end = left_end.right while left_end.right
    left_end.right = right
    root.right = left
    root.left = nil
  end
end
