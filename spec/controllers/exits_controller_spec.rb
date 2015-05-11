require 'rails_helper'

RSpec.describe ExitsController, type: :controller do
  describe 'GET /lines/:line_id/stations/:station_id/exits' do
    let(:line_models) { create_list(:line, 3) }
    let(:exit_models) { create_list(:exit, 3) }
    context 'when :station_id is test.station2,' do
      it 'should include three entities that station_id is test.station1' do
        exit_count = exit_models.count
        line = line_models[1]
        get 'index', line_id: 'test.line2', station_id: 'test.station1', format: 'html'
        expect(assigns[:exits].count).to eq(exit_count) 
        expect(assigns[:line]).to eq(line) 
        expect(response.status).to eq(200) 
      end
    end
  end
  describe 'GET /lines/:line_id/stations/:station_id/exits/:id' do
    let(:exit_models) { create_list(:exit, 3) }
    context 'when :id is 1,' do
      it 'should be got' do
        exit_model = exit_models[0]
        get 'show', line_id: 'test.line2', station_id: 'test.station2', id: '1', format: 'html'
        expect(assigns[:exit]).to eq(exit_model) 
        expect(response.status).to eq(200) 
      end
    end
  end
end
