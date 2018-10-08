class PigLatinizer
  attr_reader :text

  def initialize
    
  end

  def piglatinize(text)
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alpha - vowels

    rtn_array = text.split(" ").map do |word|
      if vowels.include?(word.downcase[0])
        word + 'way'
      elsif consonants.include?(word.downcase[0]) && consonants.include?(word.downcase[1]) && consonants.include?(word.downcase[2])
        word[3..-1] + word[0..2] + 'ay'
      elsif consonants.include?(word.downcase[0]) && consonants.include?(word.downcase[1])
        word[2..-1] + word[0..1] + 'ay'
      elsif consonants.include?(word.downcase[0])
        word[1..-1] + word[0] + 'ay'
      else
        word # return unchanged
      end
    end
    # binding.pry
    rtn_array.join(" ")
  end

end