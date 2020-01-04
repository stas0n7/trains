class Admin::SeatedCarriagesController < Admin::BaseController
  before_action :set_train, only: [:new, :create]

  def show
    @seated_carriage = SeatedCarriage.find(params[:id])
  end

  def new
    @seated_carriage = SeatedCarriage.new
  end

  def create
    @seated_carriage = SeatedCarriage.new(seated_carriage_params)
    @seated_carriage.train = @train
    if @seated_carriage.save
      redirect_to [:admin, @train]
    else
      render :new
    end
  end

  private

  def set_train
    @train = Train.find(params[:train_id])
  end

  def seated_carriage_params
    params.require(:seated_carriage).permit(:train_id, :number, :seated_seats)
  end
end
