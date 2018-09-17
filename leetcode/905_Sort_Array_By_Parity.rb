# Leetcode 905
class SortArrayByParity
  def sort_array_by_parity(a)
    return a if a.length < 2
    s = 0
    t = a.length - 1
    while s < t
      while a[s].odd? && s < t
        temp = a[s]
        a[s] = a[t]
        a[t] = temp
        t -= 1
      end
      s += 1
    end
    a
  end
end
