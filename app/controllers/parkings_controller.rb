class ParkingsController < ApplicationController
    
  def index
    @parkings = Parking.all
  end

  def new
    @user = current_user
    @parking = Parking.new
  end

  def show
    @parking = Parking.find(params[:id])
  end

  def create
    @user = User.find(current_user.id)
    @parking = @user.parkings.new(parking_params)

    if @parking.save
      redirect_to @parking
    else
      render 'new'
    end
  end

  def edit
    @parking = Parking.find(params[:id])
  end

  def update
    @parking = Parking.find(params[:id])

    if @parking.update(parking_params)
      redirect_to @parking
    else
      render @parking
    end
  end

  private

  def parking_params
    params.require(:parking).permit(:name, :process_step)
  end
end