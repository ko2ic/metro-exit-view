require "rails_helper"

RSpec.describe ExitsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(get: "/lines/aaa.aaa/stations/bbb.bbb/exits").to route_to(action: 'index', controller: 'exits', line_id: 'aaa.aaa', station_id: 'bbb.bbb')
    end

    it "routes to #show" do
      expect(get: "/lines/aaa.aaa/stations/bbb.bbb/exits/1").to route_to(action: 'show', controller: 'exits', line_id: 'aaa.aaa', station_id: 'bbb.bbb', id: '1')
    end

  end
end
