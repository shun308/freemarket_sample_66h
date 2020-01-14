class ProfilesController < ApplicationController

  # def edit
  #   @user = @profile.build_user 
  #   # @user_name = User.find_by(:nickname)
  #   @profile = Profile.find(params[:id])
  #   # @profile_text = Profile.find_by(:body)
  # end

  # def update
  #   if current.user.update(profile_params)
  #     redirect_to action :edit, notice "変更しました"
  #   else
  #     redirect_to action :edit, notice "変更できませんでした"
  #   end
  # end

  # private
  # def user_params
  #   params.require(:user).permit(:nickname)
  # end

  # def profile_params
  #  params.require(:profile).permit(:body)
  # end
end
