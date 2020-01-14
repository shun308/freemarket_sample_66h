class AddressController < ApplicationController
  # def index
  #   @adresses = Adresse.all
  # end

  def new
   @adresse = Adresse.new
  end


  def create
    Adresse.create(adresse_params)
    # redirect_to
  end

  def edit
    @change = Adresse.find(params[:id])
  end

  def update
    @change.update(adresse_params)
  end
  
  private
  def adresse_params
    params.require(:adresse).permit(:zipcode, :prefecture, :city, :district, :building)
  end

end
