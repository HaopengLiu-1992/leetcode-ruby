# Leetcode 515
class FindLargestValueInEachTreeRow
  def largest_values(root)
    return [] if root.nil?
    res = []
    cur = [root]
    until cur.empty?
      nxt = []
      max = cur.first.val
      cur.each do |node|
        max = node.val if node.val > max
        nxt << node.left if node.left
        nxt << node.right if node.right
      end
      res << max
      cur = nxt
    end
    res
  end
end
