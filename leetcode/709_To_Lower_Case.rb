# Leetcode 709
class ToLowerCase
  def to_lower_case(s)
    s_lowercase = ''
    s.chars.each do |ch|
      if ch.ord >= 65 && ch.ord <= 90
        s_lowercase += (ch.ord + 32).chr
      else
        s_lowercase += ch
      end
    end
    s_lowercase
  end
end
