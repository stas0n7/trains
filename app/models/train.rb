class Train < ApplicationRecord
  validates :number, presence: true
  belongs_to :railway_station
  belongs_to :route
  has_many :carriages
end
