require 'rails_helper'

RSpec.describe LinesController, type: :controller do
  describe 'GET /lines/' do
    let(:line_models) { create_list(:line, 3) }
    context 'when there is three lines,' do
      it 'should have  three entities' do
        line_count = line_models.count
        get 'index' 
        expect(assigns[:lines].count).to eq line_count 
        expect(response.status).to eq(200) 
      end
    end
  end
end
