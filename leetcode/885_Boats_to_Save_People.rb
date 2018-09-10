# Leetcode 885
class BoatsToSavePeople
  def solution(people, limit)
    people.sort!
    i = 0
    j = people.length - 1
    count = 0
    until i > j
      count += 1
      i += 1 if people[i] + people[j] <= limit
      j -= 1
    end
    count
  end
end
