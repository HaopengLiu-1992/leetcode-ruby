require_relative 'helper'

# Leetcode 237
class DeleteNodeInALinkedList
  include Helper::LinkedListHelper
  def delete_node(node)
    prev = nil
    until node.next.nil?
      node.val = node.next.val
      prev = node
      node = node.next

    end
    prev.next = nil
  end
end
