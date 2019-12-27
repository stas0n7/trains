class TicketsController < ApplicationController
  before_action :set_ticket, only: [:show, :destroy]

  def index
    @tickets = Ticket.all
  end

  def new
    @ticket = Ticket.new
    @train = Train.find(params[:train_id])
    @route = Route.find(params[:route_id])
  end

  def show
  end

  def create
    @ticket = Ticket.new(params_ticket)
    if @ticket.save
      redirect_to @ticket
    else
      render :new
    end
  end

  def destroy
    @ticket.destroy
    redirect_to tickets_path
  end

  private

  def params_ticket
    params.require(:ticket).permit(:user_id, :train_id, :passanger, :first_name, :last_name)
  end

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end
end