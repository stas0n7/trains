class Admin::CoupeCarriagesController < Admin::BaseController
  before_action :set_train, only: [:new, :create]

  def show
    @coupe_carriage = CoupeCarriage.find(params[:id])
  end

  def new
    @coupe_carriage = CoupeCarriage.new
  end

  def create
    @coupe_carriage = CoupeCarriage.new(coupe_carriage_params)
    @coupe_carriage.train = @train
    if @coupe_carriage.save
      redirect_to [:admin, @train]
    else
      render :new
    end
  end

  private

  def set_train
    @train = Train.find(params[:train_id])
  end

  def coupe_carriage_params
    params.require(:coupe_carriage).permit(:train_id, :number, :top_seats, :bottom_seats)
  end
end
