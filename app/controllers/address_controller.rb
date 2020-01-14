class AddressController < ApplicationController
  # def index
  #   @adresses = Adresse.all
  # end

  def new
    # @adresse = Adresse.new
  end


  def create
    # adresse.create(adresse_params)
  end

  def edit
  end

  def update
  end
  
  private
  def adresse_params
    # params.require(:adresse).permit(:zipcode, :prefecture, :text)
  end

end
