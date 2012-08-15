require 'spec_helper'

describe Ubyray do
  it "translates simple words" do
    Ubyray.translate("ruby").should eq "ubyray"
  end
end
