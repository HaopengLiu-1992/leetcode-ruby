class ListNode
  attr_accessor :val, :next
    def initialize(val)
      @val = val
      @next = nil
    end
end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
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

# test
#
def print_list(l)
  arr = []
  while l != nil
    arr << l.val
    l = l.next
  end
  puts arr.join('->')
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

l1 = init_list_by_array([1,2,3])
l2 = init_list_by_array([4,3,2])

res = add_two_numbers(l1, l2)

print_list(res)

