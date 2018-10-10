require 'pry'

class PigLatinizer

  def piglatinize(word)
    sliced = nil
    word.split.map do |char|
      if char[0].match(/[^aeiou]/i) && char[1].match(/[aeiou]/i)
        sliced = word.slice!(0)
        return word + sliced + "ay"
      elsif char[0].match(/[^aeiou]/i) && char[1].match(/[^aeiou]/i) && !word.include?("y")
        sliced = word.slice!(0..1)
        return word + sliced + "ay"
      elsif char[0].match(/[aeiou]/i)
        return word + "way"
      elsif char.match(/y/)
        if word.match(/(?<=y).+/)
          sliced = word.slice!(/(?<=y).+/)
          return "ay" + sliced + word
        else
          return "ay" + word
        end
      end
    end
  end

  def piglatinize(text)
    sliced = nil
    text.split.map do |word|
      word.split.map do |char|
        if char[0].match(/[^aeiou]/i) && char[1].match(/[aeiou]/i)
          sliced = word.slice!(0)
           word + sliced + "ay"
        elsif char[0].match(/[^aeiou]/i) && char[1].match(/[^aeiou]/i) && !word.include?("y")
          sliced = word.slice!(0..1)
          word + sliced + "ay"
        elsif char[0].match(/[aeiou]/i)
          word + "way"
        elsif char.match(/y/)
          if word.match(/(?<=y).+/)
            sliced = word.slice!(/(?<=y).+/)
            "ay" + sliced + word
          else
            "ay" + word
          end
        end
      end.join(" ")
    end.join(" ")
  end

end





inst = PigLatinizer.new
inst_sentence = PigLatinizer.new

puts inst.piglatinize("pork")
puts inst.piglatinize("I")
puts inst.piglatinize("hello")
puts inst.piglatinize("please")
puts inst.piglatinize("tomorrow")
puts inst.piglatinize("until")
puts inst.piglatinize("this")
puts inst.piglatinize("Enumeration")
puts inst.piglatinize("spray")
puts inst.piglatinize("prays")
puts inst.piglatinize("i love programming")
