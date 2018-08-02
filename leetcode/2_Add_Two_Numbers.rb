require_relative "helper"

class AddTwoNumbers
  include Helper::LinkedListHelper
  def solution(l1, l2)
    l = ListNode.new(0)
    p = l
    flag = 0;
    while(!l1.nil? || !l2.nil? || flag != 0)
      val = (l1.nil? ? 0 : l1.val) + (l2.nil? ? 0 : l2.val) + flag
      p.next = ListNode.new(val % 10)
      flag = val / 10
      p = p.next
      l1 = l1.next unless l1.nil?
      l2 = l2.next unless l2.nil?
    end
    p.next = ListNode.new(flag) if flag == 1
    l.next
  end
end