# Leetcode 888
class UncommonWordsFromTwoSentences
  def solution(sen1, sen2)
    hash_a = save_in_hash(sen1).select { |_k, v| v == 1 }
    hash_b = save_in_hash(sen2).select { |_k, v| v == 1 }
    a1 = hash_a.reject { |k, _v| save_in_hash(sen2).include?(k) }
    b1 = hash_b.reject { |k, _v| save_in_hash(sen1).include?(k) }
    a1.merge(b1).keys
  end

  def save_in_hash(sentence)
    word_array = sentence.split(' ')
    hash = {}
    word_array.each { |word| hash[word] = hash.include?(word) ? hash[word] + 1 : 1 }
    hash
  end
end

# temp test
sen1 = 'this apple is sweet'
sen2 = 'this apple is sour'

func = UncommonWordsFromTwoSentences.new

puts func.solution(sen1, sen2)
