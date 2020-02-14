class SearchesController < ApplicationController
  def new
    @stations = RailwayStation.all
  end

  def show
    redirect_to new_search_path, alert: "you can't travel to same station" if params[:start_id] == params[:end_id]
    @routes = RailwayStation.find(params[:start_id]).routes & RailwayStation.find(params[:end_id]).routes
    @routes.each { |route| @trains ||= 1 if route.trains.present? }
  end
end
