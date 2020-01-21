class AddressController < ApplicationController
  def edit
    @address = User.find(params[:id])
  end

  def update
    if User.find(params[:id]).update(address_params)
      redirect_to edit_address_path(current_user)
    else
      flash.now[:alert] = "入力内容を確認してください"
    end
  end
  
  private
  def address_params
    params.require(:user).permit(:address_first_name,:address_last_name,:address_first_name_kana,:address_last_name_kana,:address_number,:address_prefecture,:address_name,:address_block,:address_building,:address_phone_number)
  end
end