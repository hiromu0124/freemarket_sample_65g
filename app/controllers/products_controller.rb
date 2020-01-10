class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :destroy]
  
  def index
    @category_woman=ProductCategory.find(1)
    @product_womans=Product.where(product_category_id:@category_woman.id)
    @product_woman_images=ProductImage.where(product:@product_womans.ids)
    @category_man=ProductCategory.find(2)
    @product_mans=Product.where(product_category_id:@category_man.id)
    @product_man_images=ProductImage.where(product:@product_mans.ids)
    @category_toy=ProductCategory.find(3)
    @product_toies=Product.where(product_category_id:@category_toy.id)
    @product_toy_images=ProductImage.where(product:@product_toies.ids)
    @category_camera=ProductCategory.find(5)
    @product_cameraes=Product.where(product_category_id:@category_camera.id)
    @product_camera_images=ProductImage.where(product:@product_cameraes.ids)
  end

  def new
    @product = Product.new
    @product.product_images.new
  end

  def create
    
  end

  def create2
    @products = Product.find(1)
    @comment=ProductComment.new(comment_params)
    if @comment.save
      respond_to do |format|
        format.html { redirect_to product_path( @products.id) } 
      end
    else
      render :show
  end
end

  def show
    @category_product=@product.product_category_id
    @user_product= @product.user.id
    @product_category=Product.where(product_category_id:@category_product)
    @product_user=Product.where(user_id:@user_product)
    @category_image=ProductImage.where(product_id:@product_category)
    @product_image=ProductImage.where(product_id: @product_user.ids)
    @product_0 = Product.find_by(id:@product.id-1)
    @product_1 = Product.find_by(id:@product.id+1)
    @images = ProductImage.where(product_id: params[:id])
    @comments = ProductComment.where(product_id: params[:id])
    @product_comment=ProductComment.new
  end

  def destroy
    if @product.destroy 
      redirect_to root_path
    else
      redirect_to product_destroy_miss_path
    end
  end

  def destroy_miss
  end

private
  def comment_params
    params.require(:product_comment).permit(:comment).merge(user_id: current_user.id, product_id: @products.id)
  end
  def set_product
    @product = Product.find(params[:id])
  end
end

