require_relative 'helper'

# Leetcode 19
class RemoveNthNodeFromEndOfList
  include Helper::LinkedListHelper
  def remove_nth_from_end(head, n)
    dummy = ListNode.new(0)
    dummy.next = head
    fast = head
    count = 0
    while count < n
      fast = fast.next
      count += 1
    end
    slow = dummy
    until fast.nil?
      fast = fast.next
      slow = slow.next
    end
    slow.next = slow.next.next
    dummy.next
  end
end
