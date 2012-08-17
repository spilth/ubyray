require "ubyray/version"

module Ubyray
  def self.translate(word)
    letter = self.first_letter(word)

    if vowelized?(word)
      return "#{word}way"
    else
      rest = word[1..-1]
      rest.capitalize! if self.capitalized?(word)
      return "#{rest}#{letter}ay"
    end
  end

  def self.first_letter(word)
    if RUBY_VERSION < "1.9"
      letter = word[0].chr.downcase
    else
      letter = word[0].downcase
    end

    letter
  end

  def self.vowelized?(word)
    letter = self.first_letter(word)

    ["a","e","i","o","u"].include?(letter.downcase)
  end

  def self.capitalized?(word)
    if RUBY_VERSION < "1.9"
      ord = word[0]
    else
      ord = word[0].ord
    end

    ord < 97
  end

end

