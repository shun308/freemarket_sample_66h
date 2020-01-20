class UsersController < ApplicationController
  # before_action :set_user, only: [:edit,:update]

  def edit
    @user = User.find(params[:id])
    
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to root_path, notice:"変更しました。"
    else 
      redirect_to root_path, alert:"変更に失敗しました。"
    end
  end

  def logout
    
  end


  private
  def user_params
    params.require(:user).permit(:address_number,:address_prefecture,:address_name,:address_block,:address_building,:address_phone_number)
  end

  # def set_user
  #   @user = User.find(params[:id])
  # end
end
