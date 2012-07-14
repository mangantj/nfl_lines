require 'spec_helper'

describe Pick do 
  before(:each) do
    @pick = FactoryGirl.create(:pick)
  end

  it "should not allow spread value that is not integer or half of integer" do
    @pick.spread = 4.4
    @pick.should_not be_valid
    @pick.spread = -4.4
    @pick.should_not be_valid
  end

  it "should allow for negative spread" do
    @pick.spread = -4.5
    @pick.should be_valid
  end

  it "should not allow a nil/blank spread" do
    @pick.spread = nil
    @pick.should_not be_valid
  end
  
end