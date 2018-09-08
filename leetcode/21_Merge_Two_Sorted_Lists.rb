require_relative 'helper'
# Leetcode 21
class MergeTwoSortedLists
  include Helper::LinkedListHelper
  def merge_two_lists(l1, l2)
    res = ListNode.new(0)
    p = res
    until l1.nil? || l2.nil?
      if l1.val < l2.val
        p.next = ListNode.new(l1.val)
        l1 = l1.next
      else
        p.next = ListNode.new(l2.val)
        l2 = l2.next
      end
      p = p.next
    end
    until l1.nil?
      p.next = ListNode.new(l1.val)
      l1 = l1.next
      p = p.next
    end
    until l2.nil?
      p.next = ListNode.new(l2.val)
      l2 = l2.next
      p = p.next
    end
    res.next
  end
end
