class TicketsController < ApplicationController

  def index
    @tickets = Ticket.all
  end

  def new
    @ticket = Ticket.new
  end

  def show
    set_ticket
  end

  def create
    @ticket = Ticket.new(params.require(:ticket).permit(:passanger))
    if @ticket.save
      redirect_to @ticket
    else
      render :new
    end
  end

  def edit
    set_ticket
  end

  def update
    set_ticket
    if @ticket.update(params.require(:ticket).permit(:passanger))
      redirect_to @ticket
    else
      render :edit
    end
  end

  def destroy
    set_ticket
    @ticket.destroy
    redirect_to tickets_path
  end

  private

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end
end