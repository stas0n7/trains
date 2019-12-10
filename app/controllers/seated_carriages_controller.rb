class SeatedCarriagesController < ApplicationController
  before_action :set_seated_carriage, only: [:show, :edit, :update, :destroy]
  def index
    @seated_carriages = SeatedCarriage.all
  end

  def show
  end

  def new
    @seated_carriage = SeatedCarriage.new
  end

  def create
    @seated_carriage = SeatedCarriage.new(seated_carriage_params)
    if @seated_carriage.save
      redirect_to @seated_carriage
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @seated_carriage.update(seated_carriage_params)
      redirect_to @seated_carriage
    else
      render :edit
    end
  end

  def destroy
    @seated_carriage.destroy
    redirect_to carriages_path
  end

  private

  def set_seated_carriage
    @seated_carriage = SeatedCarriage.find(params[:id])
  end

  def seated_carriage_params
    params.require(:seated_carriage).permit(:train_id, :number, :seated_seats, :serial_number)
  end
end
