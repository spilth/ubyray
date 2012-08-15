require 'spec_helper'

describe Ubyray do
  it "should translate words starting with consanants" do
    Ubyray.translate("ruby").should eq "ubyray"
    Ubyray.translate("java").should eq "avajay"
  end
end

