require_relative 'helper'

# Leetcode 876
class MiddleOfTheLinkedList
  include Helper::LinkedListHelper
  def solution(head)
    slow = head
    fast = head
    until fast.next.nil? || fast.next.next.nil?
      slow = slow.next
      fast = fast.next.next
    end
    slow = slow.next if !fast.next.nil? && fast.next.next.nil?
    slow
  end
end
