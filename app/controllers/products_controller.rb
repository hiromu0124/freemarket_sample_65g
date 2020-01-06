class ProductsController < ApplicationController
  def index
    @category_woman=ProductCategory.find(1)
    @product_woman=Product.where(product_category_id:@category_woman.id)
    @product_woman_image=ProductImage.where(product:@product_woman.ids)
    @category_man=ProductCategory.find(2)
    @product_man=Product.where(product_category_id:@category_man.id)
    @product_man_image=ProductImage.where(product:@product_man.ids)
    @category_toy=ProductCategory.find(3)
    @product_toy=Product.where(product_category_id:@category_toy.id)
    @product_toy_image=ProductImage.where(product:@product_toy.ids)
    @category_camera=ProductCategory.find(5)
    @product_camera=Product.where(product_category_id:@category_camera.id)
    @product_camera_image=ProductImage.where(product:@product_camera.ids)
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
    @product = Product.find(params[:id])
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

private
  def comment_params
    params.require(:product_comment).permit(:comment).merge(user_id: current_user.id, product_id: @products.id)
  end
end

