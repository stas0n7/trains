class Train < ApplicationRecord
  validates :number, presence: true
  belongs_to :railway_station
  belongs_to :route
  has_many :carriages

  

  def count_seat(car_type, seat_type)
    carriages.where(type: car_type).sum(seat_type.to_sym)
  end

end
