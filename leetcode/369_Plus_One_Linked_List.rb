require_relative 'helper'
# Leetcode 369
class PlusOneLinkedList
  include Helper::LinkedListHelper
  def plus_one(head)
    arr = []
    p = head
    until p.next.nil?
      arr << p
      p = p.next
    end
    p.val = p.val + 1
    arr << p
    flag = 0
    until arr.empty?
      p = arr.pop
      p.val = p.val + flag
      if p.val == 10
        p.val = 0
        flag = 1
      else
        flag = 0
      end
    end
    dummy = ListNode.new(1)
    dummy.next = head
    flag == 1 ? dummy : head
  end
end
