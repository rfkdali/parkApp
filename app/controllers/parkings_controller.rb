class ParkingsController < ApplicationController
  before_action :set_parking, only: [:show, :edit, :update]
    
  def index
    @parkings = Parking.all
  end

  def new
    @user = current_user
    @parking = Parking.new
  end

  def show
  end

  def create
    @user = User.find(current_user.id)
    @parking = @user.parkings.new(parking_params)

    if @parking.save
      redirect_to parkings_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update

    if @parking.update(parking_params)
      redirect_to @parking
    else
      render @parking
    end
  end

  private

  def set_parking
    @parking = Parking.find(params[:id])
  end

  def parking_params
    params.require(:parking).permit(:name, :process_step)
  end
end