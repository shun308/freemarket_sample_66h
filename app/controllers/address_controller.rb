class AddressController < ApplicationController

  def new
   @adresse = Adresse.new
  end

  def create
    @adresse = Adresse.new(adresse_params)
    if @adresse.save
      redirect_to new_creditcard_path
    else
      flash.now[:alert] = "入力内容を確認してください"
    end
  end

  def edit
    @adresse = Adresse.find(params[:id])
  end

  def update
    if Adresse.find(params[:id]).update(adresse_params)
      redirect_to root_path
    else
      flash.now[:alert] = "入力内容を確認してください"
    end
  end
  
  private
  def adresse_params
    params.require(:adresse).permit(:zipcode, :prefecture, :city, :district, :building,:first_name,:last_name,:first_name_kana,:last_name_kana,:phone_number).merge(user_id: current_user.id)
  end

end
