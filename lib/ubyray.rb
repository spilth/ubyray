require "ubyray/version"

module Ubyray
  def self.translate(word)
    letter = self.first_letter(word)

    if vowelized?(word)
      return "#{word}way"
    else
      split_index = self.first_vowel_index(word)
      rest = word[0..split_index-1].downcase
      start = word[split_index..-1]
      start.capitalize! if self.capitalized?(word)
      return "#{start}#{rest}ay"
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

  def self.first_vowel_index(word)
    i = 0
    word.split(//).each do |letter|
      if self.vowel?(letter)
        return i
      end
      i += 1
    end
  end

  def self.vowel?(letter)
    ["a","e","i","o","u"].include?(letter.downcase)
  end

  def self.vowelized?(word)
    letter = self.first_letter(word)

    self.vowel?(letter)
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

