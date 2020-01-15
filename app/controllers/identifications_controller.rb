class IdentificationsController < ApplicationController
  before_action :authenticate_user!

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.update(profile_params)
    # if current_user.profile.update(profile_params)
      # redirect_to action: :edit
    if @profile.save
      redirect_to root_path
    else
      flash.now[:alert] = "tjkl"
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
