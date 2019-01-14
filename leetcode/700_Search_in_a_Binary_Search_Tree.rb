# Leetcode 700
class SearchInABinarySearchTree
  def search_bst(root, val)
    return [] unless root
    if root.val == val
      root
    elsif root.val > val
      search_bst(root.left, val)
    else
      search_bst(root.right, val)
    end
  end
end
