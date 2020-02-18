class Admin::SeatedCarriagesController < Admin::CarriagesController

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

  def seated_carriage_params
    params.require(:seated_carriage).permit(:train_id, :number, :seated_seats)
  end
end
