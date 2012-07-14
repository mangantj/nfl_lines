require 'spec_helper'

describe Pick do 
  before(:each) do
    pick = FactoryGirl.create(:pick)
  end

  it "should not allow spread value that is not integer or half of integer" do
    pick.spread = 4.4
    pick.should_not be_valid
  end
  
end