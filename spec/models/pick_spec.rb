require 'spec_helper'

describe Pick do 
  before(:each) do
    @week = FactoryGirl.create(:week)
  end

  it "should not allow spread value that is not integer or half of integer" do
    @week.games.first.picks.first.spread = 4.4
    @week.games.first.picks.first.should_not be_valid
    @week.games.first.picks.first.spread = -4.4
    @week.games.first.picks.first.should_not be_valid
  end

  it "should allow for negative spread" do
    @week.games.first.picks.first.spread = -4.5
    @week.games.first.picks.first.should be_valid
  end

  it "should not allow a nil/blank spread" do
    @week.games.first.picks.first.spread = nil
    @week.games.first.picks.first.should_not be_valid
  end
  
end