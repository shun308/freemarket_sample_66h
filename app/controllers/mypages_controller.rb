class MypagesController < ApplicationController
  def show
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    if User.find(params[:id]).update(mypages_params)
      redirect_to edit_mypage_path, notice:"変更しました。"
    else 
      redirect_to edit_mypage_path, alert:"変更に失敗しました。"
    end
  end

  private
  def mypages_params
    params.require(:user).permit(:nickname, :introduce)
  end
end
