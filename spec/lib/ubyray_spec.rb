require 'spec_helper'

describe Ubyray do
  it "should translate words starting with lower case consanants" do
    Ubyray.translate("ruby").should eq "ubyray"
  end

  it "should translate words starting with upper case consanants" do
    Ubyray.translate("Ruby").should eq "Ubyray"
  end

  it "should detect if word start with a capital" do
    Ubyray.starts_with_capital?("Foo").should eq true
  end

  it "should detect if word doesn't start with a capital" do
    Ubyray.starts_with_capital?("bar").should eq false
  end
end

