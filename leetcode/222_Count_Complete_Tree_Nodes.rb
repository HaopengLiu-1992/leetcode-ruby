# Leetcode 222
class CountCompleteTreeNodes
  def count_nodes(root)
    root.nil? ? 0 : count_nodes(root.left) + 1 + count_nodes(root.right)
  end
end
