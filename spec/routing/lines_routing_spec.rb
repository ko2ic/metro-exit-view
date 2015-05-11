require "rails_helper"

RSpec.describe LinesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(get: "/lines").to route_to("lines#index")
    end
    it "routes to #index" do
      expect(get: "/").to route_to("lines#index")
    end
  end
end
