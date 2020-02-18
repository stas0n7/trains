class Admin::SvCarriagesController < Admin::CarriagesController

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
      redirect_to [:admin, @train]
    else
      render :new
    end
  end

  private

  def sv_carriage_params
    params.require(:sv_carriage).permit(:train_id, :number, :bottom_seats)
  end
end
