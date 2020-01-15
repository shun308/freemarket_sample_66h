class IdentificationsController < ApplicationController
  before_action :authenticate_user!

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    if Profile.find(params[:id]).update(identification_params)
      redirect_to root_path 
    else
      flash.now[:alert] = "住所の変更は、メルカリアプリの「マイページ＞個人情報設定＞本人情報＞氏名・生年月日」から行ってください。"
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
