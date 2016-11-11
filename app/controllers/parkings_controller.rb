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

  private

  def parking_params
    params.require(:parking).permit(:name)
  end
end