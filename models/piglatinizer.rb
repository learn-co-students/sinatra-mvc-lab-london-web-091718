class PigLatinizer

#attr_accessor :string

def vowel?(word)
  word.start_with?("a","e","i","o","u")
end

  def piglatinize(string)
    string.split.map do |word|
      wd = word.downcase
      if vowel?(wd)
        word + "way"
      elsif !vowel?(wd) && !vowel?(wd[1]) && !vowel?(wd[2])
        word[3..-1] + word[0..2] + "ay"
      elsif !vowel?(wd) && !vowel?(wd[1])
        word[2..-1] + word[0..1] + "ay"
      elsif !vowel?(wd)
        word[1..-1] + word[0] + "ay"
      end
    end.join(" ")
  end

end
