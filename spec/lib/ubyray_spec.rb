require 'spec_helper'

describe Ubyray do
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
  
  it "should translate words starting with a lower case vowel" do
    Ubyray.translate("apple").should eq "appleway"
  end
  
  it "should translate words starting with a upper case vowel" do
    Ubyray.translate("Apple").should eq "Appleway"
  end

  it "should translate sentences" do
    Ubyray.translate("Hello world").should eq "Ellohay orldway"
  end

  it "should find the index of the first vowel in a word" do
    Ubyray.first_vowel_index("apple").should eq 0
    Ubyray.first_vowel_index("ruby").should eq 1
    Ubyray.first_vowel_index("Pragmatic").should eq 2
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

