class ProductsController < ApplicationController
  def index
    
  end

  def new
    @product = Product.new
    @product.product_images.new
  end

  def create
    # binding.pry
    Product.create(product_params)
    redirect_to action: :new
  end

  def show
    @product = Product.find(params[:id])
    @images = ProductImage.where(product_id: params[:id])
    @comments = ProductComment.where(product_id: params[:id])
  end


  private
  def product_params
    params.require(:product).permit(:name, :product_explain, :price, :product_category_id, :product_brand_id, :product_send_day, :prefecture_id, :product_condition, :product_fee, product_images_attributes: [:image]).merge(user_id: current_user.id, transaction_status: '出品中')
  end
end