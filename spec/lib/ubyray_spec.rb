require 'spec_helper'

describe Ubyray do
  describe ".translate" do
    context "a single word" do
      context "starting with a single constanant" do
        it "maintains the first letter as lowercase" do
          expect(Ubyray.translate 'ruby').to eq 'ubyray'
        end

        it "maintains the first letter as uppercase" do
          expect(Ubyray.translate 'Ruby').to eq 'Ubyray'
        end
      end

      context "starting with multiple consanants" do
        it "maintains the first letter as lowercase" do
          expect(Ubyray.translate 'pragmatic').to eq 'agmaticpray'
        end

        it "maintains the first letter as uppercase" do
          expect(Ubyray.translate 'Pragmatic').to eq 'Agmaticpray'
        end
      end

      context "starting with a vowel" do
        it "adds 'way' to a lowercase word" do
          expect(Ubyray.translate 'apple').to eq 'appleway'
        end

        it "adds 'way' to a capitalized word" do
          expect(Ubyray.translate 'Apple').to eq 'Appleway'
        end
      end
    end

    context "a sentence" do
      it "should translate sentences" do
        Ubyray.translate("Hello world").should eq "Ellohay orldway"
      end

      it "should translate sentences with punctuation" do
        pending("Not working yet")
        #Ubyray.translate('This is a sentence.').should eq 'Isthay isway away entencesay.'
      end
    end
  end

  describe ".letter?" do
    it "determines if a character is a letter or not" do
      expect(Ubyray.letter? 'a').to eq true
      expect(Ubyray.letter? 'Z').to eq true
      expect(Ubyray.letter? '-').to eq false
      expect(Ubyray.letter? '!').to eq false
      expect(Ubyray.letter? '3').to eq false
      expect(Ubyray.letter? ' ').to eq false
    end
  end

  describe ".first_vowerl_index" do
    it "finds the index of the first vowel in a word" do
      expect(Ubyray.first_vowel_index 'apple').to eq 0
      expect(Ubyray.first_vowel_index 'ruby').to eq 1
      expect(Ubyray.first_vowel_index 'Pragmatic').to eq 2
      expect(Ubyray.first_vowel_index 'pry').to eq 2
    end
  end

  describe ".vowelized?" do
    it "determines if a word starts a vowel" do
      expect(Ubyray.vowelized? 'Apple').to eq true
      expect(Ubyray.vowelized? 'apple').to eq true
      expect(Ubyray.vowelized? 'Microsoft').to eq false
      expect(Ubyray.vowelized? 'microsoft').to eq false
    end
  end

  describe ".capitalized?" do
    it "determines if a word starts with a capital letter" do
      expect(Ubyray.capitalized? 'Foo').to eq true
      expect(Ubyray.capitalized? 'foo').to eq false
    end
  end

  describe ".to_a" do
    it "should return an array with an empty string for an empty sentence" do
      expect(Ubyray.to_a '').to eq ['']
    end

    it "turns a sentence into an array of pieces" do
      pending("Not working yet")
      #Ubyray.to_a("First third fifth").should eq ['First', ' ', 'third', ' ', 'fifth']
    end
  end
end

