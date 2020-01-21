class ProductsController < ApplicationController
  def index

  end

  def new
    @product = Product.new
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
    # @probuct = Product.find(params[:id])
  end

  def edit

  end

  def update

  end

  def destroy


  end
  def product_params
    params.require(:product).permit(  :size,
                                      :description, 
                                      :brand,
                                      :price,
                                      :shipping_method,
                                      :region,
                                      :period_before_shipping,
                                      :fee,
                                      :sel_state,
                                      :condition,
                                      :name,
                                      :category_id
                                      .merge(user_id: current_user.id))
  end
end
