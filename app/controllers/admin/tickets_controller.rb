class Admin::TicketsController < Admin::BaseController
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]

  def index
    @tickets = Ticket.all
  end

  def show
  end

  def update
    if @ticket.update(params_ticket)
      redirect_to @ticket
    else
      render :edit
    end
  end

  def destroy
    @ticket.destroy
    redirect_to admin_tickets_path
  end

  private

  def params_ticket
    params.require(:ticket).permit(:user_id, :train_id, :passanger, :first_name, :last_name)
  end

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end
end