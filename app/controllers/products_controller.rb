class ProductsController < ApplicationController
  def index
    
  end

  def new
    @product = Product.new
    @product.images.new
  end

  def create
    
  end

  def create2
    @products = Product.find(1)
    ProductComment.create(comment_params)
      respond_to do |format|
        format.html { redirect_to product_path( @products.id) }
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

