require_relative 'helper'
# Leetcode 83
class RemoveDuplicatesFromSortedList
  include Helper::LinkedListHelper
  def delete_duplicates(head)
    return nil if head.nil?
    prev = head
    p = head.next
    until p.nil?
      if p.val != prev.val
        prev.next = p
        p = p.next
        prev = prev.next
      else
        p = p.next
      end
    end
    prev.next = nil
    head
  end
end
