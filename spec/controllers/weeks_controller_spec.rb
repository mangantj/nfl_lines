require 'spec_helper'

describe WeeksController do
  describe "GET #index" do
    it "renders the index view" do
      {:get => '/'}.should route_to(:controller => "weeks", :action => "index")
    end

    it "populates an array of weeks" do
      week = FactoryGirl.create(:week)
      get :index
      assigns(:weeks).should eq([week])
    end
  end
end