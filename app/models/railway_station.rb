class RailwayStation < ApplicationRecord
  validates :title, presence: true
  has_many :trains
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes

  scope :ordered, -> { joins(:railway_stations_routes).order('railway_stations_routes.position').uniq }

  def update_position(route, position)
    station_route = station_route(route)
    station_route.update(position: position) if station_route
  end

  def position_in(route)
    station_route(route).try(:position)
  end

  def update_arr_dep(route, arrival, depart)
    station_route = station_route(route)
    station_route.update(arrival_time: arrival, depart_time: depart)
  end

  def arrival_in(route)
    station_route(route).arrival_time
  end

  def depart_in(route)
    station_route(route).depart_time
  end

  protected

  def station_route(route)
    @station_route ||= railway_stations_routes.where(route: route).first
  end
end
