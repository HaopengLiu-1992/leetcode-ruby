# Leetcode 657
class RobotReturnToOrigin
  def judge_circle(moves)
    x = 0
    y = 0
    moves.chars.each do |move|
      x -= 1 if move == 'L'
      x += 1 if move == 'R'
      y -= 1 if move == 'D'
      y += 1 if move == 'U'
    end
    x.zero? && y.zero?
  end
end
