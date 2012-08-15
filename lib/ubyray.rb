class Ubyray
  def self.translate(word)
    letter = word[0]
    rest = word[1..-1]
    return "#{rest}#{letter}ay"
  end
end
