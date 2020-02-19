class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :train

## dont work in heroku production without addon
#  after_create :buy_notification
#  after_destroy :cancel_notification


 private

  def buy_notification
    TicketsMailer.buy_ticket(user, self).deliver_now
  end

  def cancel_notification
    TicketsMailer.cancel_ticket(user, self).deliver_now
  end
end
