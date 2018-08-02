require_relative "helper"

class MiddleOfTheLinkedList
  extend Helper
  include Helper::LinkedListHelper::ListNode
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

a =  MiddleOfTheLinkedList.new
b = init_list_by_array[1,2,3]
puts a.solution(b)