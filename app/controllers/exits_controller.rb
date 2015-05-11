class ExitsController < ApplicationController
  before_action :set_exit, only: [:show]

  def index
    @line = Line.find(params[:line_id])
    @exits = Exit.where(station_id: params[:station_id])
  end

  def show
  end

  private
    def set_exit
      @exit = Exit.find(params[:id])
    end
end
