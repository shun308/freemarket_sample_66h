class ProductsController < ApplicationController
  before_action :set_product, except: [:index, :new, :create]
  
  def index
    @products = Product.order('created_at DESC').limit(4)
  end

  def new
    @product = Product.new
    @product.images.build
  end

  def create
    binding.pry
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_path
    else
      render 'products/new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to root_path
    else
      redirect_to edit_product_path
    end
  end

  def destroy
    if @product.destroy
      redirect_to root_path
    else
      redirect_to action: :show
    end
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
                                      images_attributes:[:image, :_destroy, :id]).merge(user_id: current_user.id)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end