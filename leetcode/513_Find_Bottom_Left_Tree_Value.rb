# Leetcode 513
class FindBottomLeftTreeValue
  def find_bottom_left_value(root)
    return nil if root.nil?
    cur = [root]
    left = root
    until cur.empty?
      nxt = []
      left = cur.first
      cur.each do |node|
        nxt << node.left if node.left
        nxt << node.right if node.right
      end
      cur = nxt
    end
    left.val
  end
end
