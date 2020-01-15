class IdentificationsController < ApplicationController
  before_action :authenticate_user!

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    if Profile.find(params[:id]).update(identification_params)
      redirect_to root_path
    else
      flash.now[:alert] = "入力内容を確認してください"
    end
  end

    private
    def user_params
      params.require(:user).permit(:nickname)
    end

  def identification_params
    params.require(:profile).permit(:liveing_code, :living_state, :living_city, :living_number, :living_building)
  end

end
