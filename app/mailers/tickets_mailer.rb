class TicketsMailer < ApplicationMailer

  def buy_ticket(user, ticket)
    @user =   user
    @ticket = ticket
    mail(to: user, subject: 'You bought ticket')
  end

  def cancel_ticket(user, ticket)
    @user =   user
    @ticket = ticket
    mail(to: user, subject: 'Cancel ticket')
  end
end
