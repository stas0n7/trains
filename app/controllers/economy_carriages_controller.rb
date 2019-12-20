class EconomyCarriagesController < ApplicationController
  before_action :set_economy_carriage, only: [:show, :edit, :update, :destroy]
  before_action :set_train
  def index
    @economy_carriages = EconomyCarriage.all
  end

  def show
  end

  def new
    @economy_carriage = EconomyCarriage.new
  end

  def create
    @economy_carriage = EconomyCarriage.new(economy_carriage_params)
    @economy_carriage.train = @train
    if @economy_carriage.save
      redirect_to @train
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @economy_carriage.update(economy_carriage_params)
      redirect_to [@train, @economy_carriage]
    else
      render :edit
    end
  end

  def destroy
    @economy_carriage.destroy
    redirect_to carriages_path
  end

  private

  def set_train
    @train = Train.find(params[:train_id])
  end

  def set_economy_carriage
    @economy_carriage = EconomyCarriage.find(params[:id])
  end

  def economy_carriage_params
    params.require(:economy_carriage).permit(:train_id, :number, :top_seats, :bottom_seats, :side_top_seats, :side_bottom_seats)
  end
end
