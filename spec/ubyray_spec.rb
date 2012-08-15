require 'spec_helper'

describe Ubyray do
  it "translates simple words" do
    Ubyray.translate("ruby").should eq "ubyray"
    Ubyray.translate("java").should eq "avajay"
  end
end

