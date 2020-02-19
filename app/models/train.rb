class Train < ApplicationRecord
  validates :number, presence: true
  validates :number, uniqueness: true

  belongs_to :railway_station
  belongs_to :route
  has_many :carriages
  has_many :tickets

  before_validation :set_station

  private

  def set_station
    self.railway_station = route.railway_stations.first
  end
end
