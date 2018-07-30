require "../leetcode/helper"

class MiddleOfTheLinkedList
  extend Helper
  def solution(head)
    slow = head
    fast = head
    until fast.next.nil? || fast.next.next.nil? do
      slow = slow.next
      fast = fast.next.next
    end
    slow = slow.next if !fast.next.nil? && fast.next.next.nil?
    return slow
  end
end