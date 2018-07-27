require 'test/unit'
require '../leetcode/2_Add_Two_Numbers'
class AddTwoNumbersTest < Test::Unit::TestCase
  setup do
    @l1 = init_list_by_array([1,2,3])
    @l2 = init_list_by_array([4,3,2])
    @res = init_list_by_array([5,5,5])
    @add_two_numbers = AddTwoNumbers.new
  end

  def test
    assert_equal(@add_two_numbers.solution(l1,l2), @res)
  end

  private
  def list_to_array(l)
    arr = []
    while l != nil
      arr << l.val
      l = l.next
    end
    arr
  end

  def init_list_by_array(arr)
    head = ListNode.new(arr[0])
    p = head
    (1...arr.length).each do |index|
      p.next = ListNode.new(arr[index])
      p = p.next
    end
    head
  end
end

