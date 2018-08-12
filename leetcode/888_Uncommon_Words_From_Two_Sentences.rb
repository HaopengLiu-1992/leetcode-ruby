class UncommonWordsFromTwoSentences
  def solution(a, b)
    hash_a = save_in_hash(a).select{|k, v| v == 1}
    hash_b = save_in_hash(b).select{|k, v| v == 1}
    a1 = hash_a.select{|k, v| !save_in_hash(b).include?(k) }
    b1 = hash_b.select{|k, v| !save_in_hash(a).include?(k) }
    a1.merge(b1).keys
  end

  def save_in_hash(sentence)
    word_array = sentence.split(" ")
    hash = Hash.new
    word_array.each {|word| hash.include?(word) ? hash[word]=hash[word]+1 : hash[word]=1 }
    hash
  end
end

#temp test
a = "this apple is sweet"
b = "this apple is sour"

func = UncommonWordsFromTwoSentences.new

puts func.solution(a,b)