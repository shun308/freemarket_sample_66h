class ProductsController < ApplicationController
  
  def index

  end

  def new
    @product = Product.new
    @product.images.build
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path(@product)
    else
      render 'products/new'
    end
  end

  def show
    @product = Product.find(params[:id])    
  end

  def edit

  end

  def update

  end

  def destroy


  end

  private
  
  def product_params
    params.require(:product).permit(  :size,
                                      :description, 
                                      :brand,
                                      :price,
                                      :shipping_method,
                                      :region,
                                      :period_before_shipping,
                                      :fee,
                                      :sell_state,
                                      :condition,
                                      :name,
                                      :category_id,
                                      images_attributes:[:image]).merge(user_id: current_user.id)
  end
end