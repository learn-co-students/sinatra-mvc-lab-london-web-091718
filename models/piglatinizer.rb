class PigLatinizer
  attr_reader :text

  def initialize

  end

  def piglatinize(text)
    result = text.split(' ').map do |str|
      alpha = ('a'..'z').to_a
       vowels = %w[a e i o u]
       consonants = alpha - vowels

       if vowels.include?(str[0].downcase)
         str + 'way'
       elsif consonants.include?(str[0].downcase) && consonants.include?(str[1]) && consonants.include?(str[2])
         str[3..-1] + str[0..2] + 'ay'
       elsif consonants.include?(str[0].downcase) && consonants.include?(str[1].downcase)
         str[2..-1] + str[0..1] + 'ay'
       elsif consonants.include?(str[0].downcase)
         str[1..-1] + str[0] + 'ay'
       else
         str # return unchanged
       end
  end.join(' ')
  result
  end


end
