require 'rails_helper'

RSpec.describe "Stations", :type => :request do
  describe "GET /lines/:line_id/stations" do
    let(:station_models) { create_list(:station, 3) }
    it "should have station" do
      station_count = station_models.count
      get "/lines/#{station_models[0].line_id}/stations"
      expect(assigns[:stations].count).to eq(station_count) 
      expect(response).to have_http_status(200)
    end
  end
end
