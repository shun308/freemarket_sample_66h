class AddressController < ApplicationController
  def edit
    @address = User.find(params[:id])
  end

  def update
    if user.find(params[:id]).update(address_params)
      redirect_to root_path
    else
      flash.now[:alert] = "入力内容を確認してください"
    end
  end
  
  private
  def address_params
    params.require(:address).permit(:zipcode, :prefecture, :city, :district, :building,:first_name,:last_name,:first_name_kana,:last_name_kana,:phone_number).
  end

end