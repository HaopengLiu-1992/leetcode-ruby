# Leetcode 12
class IntegerToRoman
  # @param {Integer} num
  # @return {String}
  def int_to_roman(num)
    res = ''
    while num >= 1000
      res += 'M'
      num -= 1000
    end
    while num >= 900
      res += 'CM'
      num -= 900
    end
    while num >= 500
      res += 'D'
      num -= 500
    end
    while num >= 400
      res += 'CD'
      num -= 400
    end
    while num >= 100
      res += 'C'
      num -= 100
    end
    while num >= 90
      res += 'XC'
      num -= 90
    end
    while num >= 50
      res += 'L'
      num -= 50
    end
    while num >= 40
      res += 'XL'
      num -= 40
    end
    while num >= 10
      res += 'X'
      num -= 10
    end
    while num >= 9
      res += 'IX'
      num -= 9
    end
    while num >= 5
      res += 'V'
      num -= 5
    end
    while num >= 4
      res += 'IV'
      num -= 4
    end
    while num >= 1
      res += 'I'
      num -= 1
    end
    res
  end
end
