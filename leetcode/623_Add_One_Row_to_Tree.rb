# Leetcode 623
class AddOneRowToTree
  def add_one_row(root, v, d)
    dummy = TreeNode.new(1)
    dummy.left = root
    cur = [dummy]
    level = 1
    while level < d
      nxt = []
      cur.each do |node|
        nxt << node.left if node.left
        nxt << node.right if node.right
      end
      level += 1
      cur = nxt
    end
    cur.each { |node| build_level(node, v) }
    dummy.left
  end

  def build_level(root, v)
    left = root.left
    right = root.right
    root.left = TreeNode.new(v)
    root.left.left = left
    root.right = TreeNode.new(v)
    root.right.right = right
  end
end
