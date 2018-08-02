require_relative "helper"

class MiddleOfTheLinkedList
  include Helper::LinkedListHelper
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
list = a.init_list_by_array([1,2,3])
sol = a.solution(list)
puts a.list_to_array(sol)