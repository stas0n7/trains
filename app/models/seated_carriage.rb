class SeatedCarriage < Carriage
  validates :seated_seats, presence: true
end
