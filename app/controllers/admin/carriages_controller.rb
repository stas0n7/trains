class Admin::CarriagesController < Admin::BaseController
  before_action :set_train, only: [:new, :create]

  def show
    @carriage = Carriage.find(params[:id])
  end

  def new
    @train = Train.find(params[:train_id])
    @carriage = Carriage.new
  end

  def create
    @carriage = Carriage.new(carriage_params)
    @carriage.train = @train
    if @carriage.save
      redirect_to [:admin, @carriage]
    else
      render :new
    end
  end

  private

  def set_train
    @train = Train.find(params[:train_id])
  end

  def carriage_params
    params.require(:carriage).permit(:train_id, :type, :number, :top_seats, :bottom_seats, :side_top_seats, :side_bottom_seats, :seated_seats)
  end
end
