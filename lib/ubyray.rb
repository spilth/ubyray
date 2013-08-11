require 'ubyray/version'

module Ubyray
  def self.translate(sentence)
    words = sentence.split(' ')
    piglatin_words = []

    words.each do |word|
      piglatin_words << translate_word(word)
    end

    piglatin_words.join(' ')
  end

  def self.translate_word(word)
    if vowelized?(word)
      piglatin = "#{word}way"
    else
      split_index = first_vowel_index(word)
      rest = word[0..split_index-1].downcase
      start = word[split_index..-1]
      start.capitalize! if capitalized?(word)
      piglatin = "#{start}#{rest}ay"
    end
  end

  def self.first_letter(word)
    RUBY_VERSION < '1.9' ? word[0].chr.downcase : word[0].downcase
  end

  def self.first_vowel_index(word)
    i = 0
    word.split(//).each do |letter|
      if vowel?(letter)
        break
      end
      i += 1
    end
    i
  end

  def self.letter?(character)
    ('a'..'z').include?(character.downcase)
  end

  def self.vowel?(letter)
    %w{a e i o u y}.include?(letter.downcase)
  end

  def self.vowelized?(word)
    vowel? first_letter(word)
  end

  def self.capitalized?(word)
    ord = RUBY_VERSION < '1.9' ? word[0] : word[0].ord
    ord < 97
  end

  def self.to_a(sentence)
    return [""] if sentence == ""

    pieces = []
  end

end

