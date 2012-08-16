require "ubyray/version"

module Ubyray
  def self.translate(word)
    if RUBY_VERSION < "1.9"
      letter = word[0].chr.downcase
    else
      letter = word[0].downcase
    end

    rest = word[1..-1]
    rest.capitalize! if self.starts_with_capital?(word)
    return "#{rest}#{letter}ay"
  end
  
  def self.starts_with_capital?(word)
    if RUBY_VERSION < "1.9"
      ord = word[0]
    else
      ord = word[0].ord
    end

    ord < 97
  end

end

