require 'rails_helper'

RSpec.describe "lines/index", :type => :view do
  before(:each) do
    assign(:lines, [
      Line.create!(line_id: 'aaa,aaa', name: '路線1'),
      Line.create!(line_id: 'bbb.bbb', name: '路線2'),
    ])
  end

  it "renders a list of lines" do
    render
    expect(rendered).to match /路線1/
  end
end
