# Leetcode 582
class KillProcess
  def kill_process(pid, ppid, kill)
    map = build_tree(pid, ppid)
    kill(map[kill])
  end

  def kill(node)
    res = [node.val]
    node.children.each { |child| res += kill(child) }
    res
  end

  def build_tree(pid, ppid)
    map = {}
    pid.each { |id| map[id] = TreeNode.new(id) }
    (0...pid.length).each do |i|
      parent = map[ppid[i]]
      cur = map[pid[i]]
      parent.children << cur if parent
    end
    map
  end
end

# TreeNode
class TreeNode
  attr_accessor :children, :val
  def initialize(val)
    @children = []
    @val = val
  end
end
