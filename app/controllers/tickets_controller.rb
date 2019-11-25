class TicketsController < ApplicationController
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]

  def index
    @tickets = Ticket.all
  end

  def new
    @ticket = Ticket.new
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

  def edit
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
    redirect_to tickets_path
  end

  private

  def params_ticket
    params.require(:ticket).permit(:passanger, :first_station, :last_station)
  end

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end
end