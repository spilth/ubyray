require 'spec_helper'

describe Ubyray do
  it "should translate words starting with lower case consanants" do
    Ubyray.translate("ruby").should eq "ubyray"
  end

  it "should translate words starting with upper case consanants" do
    Ubyray.translate("Ruby").should eq "Ubyray"
  end
  
  it "should translate words starting with a lower case vowel" do
    Ubyray.translate("apple").should eq "appleway"
  end
  
  it "should translate words starting with a upper case vowel" do
    Ubyray.translate("Apple").should eq "Appleway"
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

