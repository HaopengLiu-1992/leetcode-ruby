require_relative 'helper'
# Leetcode 206
class ReverseLinkedList
  include Helper::LinkedListHelper
  def reverse_list(head)
    return head if head.nil? || head.next.nil?
    prev = nil
    p = head
    until p.nil?
      nxt = p.next
      p.next = prev
      prev = p
      p = nxt
    end
    prev
  end
end
