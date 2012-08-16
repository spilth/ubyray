require "ubyray/version"

module Ubyray
  def self.translate(word)
    letter = word[0].downcase
    if RUBY_VERSION < "1.9"
      letter = word[0].chr.downcase
    end

    rest = word[1..-1]
    rest.capitalize! if self.starts_with_capital?(word)
    return "#{rest}#{letter}ay"
  end
  
  def self.starts_with_capital?(word)
    word[0].ord < 97
  end
end

