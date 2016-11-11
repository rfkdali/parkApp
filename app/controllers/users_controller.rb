class UsersController < ApplicationController

  private

  def users_params
    params.require(:user).permit(:name, :email, :password, :role)
  end
end