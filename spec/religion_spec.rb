require "spec_helper"

describe Religion do

  context "constants" do
    it { should have_constant(:RELIGION) }
  end

  context "::GOVERNMENT" do
    it "should be 15" do
      Religion::RELIGION.count.should == 15
    end
  end

  context "::GOVERNMENT" do
    it "should be 12" do
      Religion::RELIGION.count.should == 15
    end
  end

  context "::REGION_DATA" do
    let(:countries) { Religion::YML_RELIGION.map { |_, v| v}.flatten.sort }

    it "provinces should be consistent with PROVINCES" do
      countries.should == Religion::RELIGION
    end
  end
end
