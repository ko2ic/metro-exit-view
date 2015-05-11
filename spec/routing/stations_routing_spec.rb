require "rails_helper"

RSpec.describe StationsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(get: "/lines/aaa.aaa/stations").to route_to(action: 'index', controller: 'stations', line_id: 'aaa.aaa')
    end

  end
end
