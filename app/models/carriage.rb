class Carriage < ApplicationRecord
  validates :carriage_type, :top_places, :lower_places, presence: true
  belongs_to :train
end
