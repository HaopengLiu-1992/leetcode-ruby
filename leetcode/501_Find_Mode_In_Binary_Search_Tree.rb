# Leetcode 501
class FindModeInBinarySearchTree
  def find_mode(root)
    @hash = {}
    @max = 0
    find_helper(root)
    res = []
    @hash.each { |k, v| res << k if v == @max }
    res
  end

  def find_helper(root)
    return if root.nil?
    if @hash.include?(root.val)
      @hash[root.val] += 1
    else
      @hash[root.val] = 1
    end
    @max = @hash[root.val] if @hash[root.val] > @max
    find_helper(root.left)
    find_helper(root.right)
  end
end
