class CoupeCarriagesController < ApplicationController
  before_action :set_coupe_carriage, only: [:show, :edit, :update, :destroy]
  before_action :set_train
  def index
    @coupe_carriages = CoupeCarriage.all
  end

  def show
  end

  def new
    @coupe_carriage = CoupeCarriage.new
  end

  def create
    @coupe_carriage = CoupeCarriage.new(coupe_carriage_params)
    @coupe_carriage.train = @train
    if @coupe_carriage.save
      redirect_to @train
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @coupe_carriage.update(coupe_carriage_params)
      redirect_to [@train, @coupe_carriage]
    else
      render :edit
    end
  end

  def destroy
    @coupe_carriage.destroy
    redirect_to @train
  end

  private

  def set_train
    @train = Train.find(params[:train_id])
  end

  def set_coupe_carriage
    @coupe_carriage = CoupeCarriage.find(params[:id])
  end

  def coupe_carriage_params
    params.require(:coupe_carriage).permit(:train_id, :number, :top_seats, :bottom_seats)
  end
end
