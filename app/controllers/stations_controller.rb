class StationsController < ApplicationController
  def index
    #line = Line.find(params[:line_id])
    #@stations = line.stations
    @stations = Station.where(line_id: params[:line_id])
  end
end
