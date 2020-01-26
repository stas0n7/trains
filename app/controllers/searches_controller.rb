class SearchesController < ApplicationController
  def new
    @stations = RailwayStation.all
  end

  def show
    @routes = RailwayStation.find(params[:start_id]).routes & RailwayStation.find(params[:end_id]).routes
    @routes.each { |route| @trains ||= 1 if route.trains.any? }
  end
end
