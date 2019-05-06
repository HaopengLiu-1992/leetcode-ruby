# Leetcode 538
class ConvertBSTToGreaterTree
  def convert_bst(root)
    sum = 0
    reverseorder(root).each do |node|
      node.val = node.val + sum
      sum = node.val
    end
    root
  end

  def reverseorder(root)
    return [] if root.nil?
    reverseorder(root.right) + [root] + reverseorder(root.left)
  end
end
