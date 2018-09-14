require_relative 'helper'
# Leetcode 203
class RemoveLinkedListElements
  include Helper::LinkedListHelper
  def remove_elements(head, val)
    dummy = ListNode.new(0)
    prev = dummy
    p = head
    until p.nil?
      if p.val != val
        prev.next = ListNode.new(p.val)
        prev = prev.next
      end
      p = p.next
    end
    dummy.next
  end
end
