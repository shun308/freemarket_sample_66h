class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def edit
    #@user = current_user.id
    #@user_name = User.find_by(:nickname)
    #@profile = Profile.find(params[:id])
    #@profile_text = Profile.find_by(:body)
  end

  def update
    if current_user.profile.update(profile_params)
      redirect_to  profile_path, notice: "変更しました"
    else
      redirect_to profile_path, notice: "変更できませんでした"
  end
end

  private
  def user_params
    params.require(:user).permit(:nickname)
  end

  def profile_params
    params.require(:profile).permit(:body)
  end
end