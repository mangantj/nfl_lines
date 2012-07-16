require 'spec_helper'

describe WeeksController do
  describe "GET #index" do
    it "renders the index view" do
      {:get => '/'}.should route_to(:controller => "weeks", :action => "index")
    end
  end
end