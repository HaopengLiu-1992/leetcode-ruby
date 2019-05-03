# Leetcode 257
class BinaryTreePaths
  def binary_tree_paths(root)
    return [] if root.nil?
    return [root.val.to_s] if root.left.nil? && root.right.nil?
    total = (binary_tree_paths(root.left) + binary_tree_paths(root.right))
    total.each_with_index do |element, i|
      total[i] = "#{root.val}->#{element}"
    end
    total
  end
end
