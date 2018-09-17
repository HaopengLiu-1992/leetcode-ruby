# Leetcode 867
class TransposeMatrix
  def transpose(a)
    b = Array.new(a[0].length) { Array.new(a.length) }
    (0...a.length).each do |i|
      (0...a[0].length).each do |j|
        b[j][i] = a[i][j]
      end
    end
    b
  end
end
