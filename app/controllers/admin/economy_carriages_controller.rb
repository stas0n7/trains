class Admin::EconomyCarriagesController < Admin::CarriagesController

  def show
    @economy_carriage = EconomyCarriage.find(params[:id])
  end

  def new
    @economy_carriage = EconomyCarriage.new
  end

  def create
    @economy_carriage = EconomyCarriage.new(economy_carriage_params)
    @economy_carriage.train = @train
    if @economy_carriage.save
      redirect_to [:admin, @train]
    else
      render :new
    end
  end

  private

  def economy_carriage_params
    params.require(:economy_carriage).permit(:train_id, :number, :top_seats, :bottom_seats, :side_top_seats, :side_bottom_seats)
  end
end
