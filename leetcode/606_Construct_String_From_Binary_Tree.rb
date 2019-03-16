# Leetcode 606
class ConstructStringFromBinaryTree
  def tree2str(t)
    return '' if t.nil?
    return t.val.to_s if t.left.nil? && t.right.nil?
    return "#{t.val}()(#{tree2str(t.right)})" if t.left.nil? && !t.right.nil?
    return "#{t.val}(#{tree2str(t.left)})" if t.right.nil? && !t.left.nil?
    "#{t.val}(#{tree2str(t.left)})(#{tree2str(t.right)})"
  end
end
