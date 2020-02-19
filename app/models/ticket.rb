class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :train

  def route
    route = train.route
    first_st = route.railway_stations.first.title
    last_st = route.railway_stations.last.title
    return "#{first_st} - #{last_st}"
  end
end
