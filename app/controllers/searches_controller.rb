class SearchesController < ApplicationController
  def new
  end

  def show
    @routes = RailwayStation.find(params[:start_id]).routes & RailwayStation.find(params[:end_id]).routes
  end
end
