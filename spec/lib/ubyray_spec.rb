require 'spec_helper'

describe Ubyray do
  context "word translation" do
    context "words starting with constanants" do
      it "should translate words starting with a single lower case consanant" do
        Ubyray.translate("ruby").should eq "ubyray"
      end

      it "should translate words starting with a single upper case consanant" do
        Ubyray.translate("Ruby").should eq "Ubyray"
      end
      
      it "should translate words starting with multiple lower case consanants" do
        Ubyray.translate("pragmatic").should eq "agmaticpray"
      end
      
      it "should translate words starting with multiple upper case consanants" do
        Ubyray.translate("Pragmatic").should eq "Agmaticpray"
      end
    end
   
    context "words starting with vowels" do
      it "should translate words starting with a lower case vowel" do
        Ubyray.translate("apple").should eq "appleway"
      end
      
      it "should translate words starting with a upper case vowel" do
        Ubyray.translate("Apple").should eq "Appleway"
      end
    end
  end

  context "sentence translations" do
    it "should translate sentences" do
      Ubyray.translate("Hello world").should eq "Ellohay orldway"
    end

    it "should translate sentences with punctuation" do
      pending("Not working yet")
      #Ubyray.translate('This is a sentence.').should eq 'Isthay isway away entencesay.'
    end
  end

  context "character helper methods" do
    it "should know if a character is a letter or not" do
      Ubyray.letter?("a").should eq true
      Ubyray.letter?("Z").should eq true
      Ubyray.letter?("-").should eq false
      Ubyray.letter?("!").should eq false
      Ubyray.letter?("3").should eq false
      Ubyray.letter?(" ").should eq false
    end
  end

  context "word helper methods" do
    it "should find the index of the first vowel in a word" do
      Ubyray.first_vowel_index("apple").should eq 0
      Ubyray.first_vowel_index("ruby").should eq 1
      Ubyray.first_vowel_index("Pragmatic").should eq 2
      Ubyray.first_vowel_index("pry").should eq 2
    end
    
    it "should detect if a word started with a vowel" do
      Ubyray.vowelized?("apple").should eq true
    end
    
    it "should detect if word start with a capital" do
      Ubyray.capitalized?("Foo").should eq true
    end

    it "should detect if word doesn't start with a capital" do
      Ubyray.capitalized?("bar").should eq false
    end
  end

  context "sentence helper methods" do
    it 'should return an array with an empty string for an empty sentence' do
      Ubyray.to_a("").should eq [""]
    end

    it 'should turn a sentence into an array of pieces' do
      pending("Not working yet")
      Ubyray.to_a("First third fifth").should eq ['First', ' ', 'third', ' ', 'fifth']
    end
  end
end

