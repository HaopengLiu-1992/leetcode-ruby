require_relative 'helper'
# Leetcode 82
class RemoveDuplicatesFromSortedListII
  include Helper::LinkedListHelper
  def delete_duplicates(head)
    return head if head.nil? || head.next.nil?
    prev = ListNode.new(0)
    p = prev
    val = head.val
    count = 0
    until head.nil?
      if val != head.val
        if count == 1
          p.next = ListNode.new(val)
          p = p.next
        end
        val = head.val
        count = 1
      else
        count += 1
      end
      head = head.next
    end
    p.next = ListNode.new(val) if count == 1
    prev.next
  end
end
