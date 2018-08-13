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

# temp test:
people = [1, 2, 3, 4, 5]
limit = 5
boats = BoatsToSavePeople.new
puts "boats.solution(people,limit) = #{boats.solution(people, limit)}"
