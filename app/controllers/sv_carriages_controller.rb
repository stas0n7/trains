class SvCarriagesController < ApplicationController
  before_action :set_train, only: [:new, :create]
  def index
    @sv_carriages = SvCarriage.all
  end

  def show
    @sv_carriage = SvCarriage.find(params[:id])
  end

  def new
    @sv_carriage = SvCarriage.new
  end

  def create
    @sv_carriage = SvCarriage.new(sv_carriage_params)
    @sv_carriage.train = @train
    if @sv_carriage.save
      redirect_to @train
    else
      render :new
    end
  end

  private

  def set_train
    @train = Train.find(params[:train_id])
  end

  def sv_carriage_params
    params.require(:sv_carriage).permit(:train_id, :number, :bottom_seats)
  end
end
