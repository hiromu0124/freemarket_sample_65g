class ProductsController < ApplicationController
  def index
    
  end

  def new
    @product = Product.new
    @product.product_images.new
  end

  def create

  end

  def show
    @product = Product.find(params[:id])
    @images = ProductImage.where(product_id: params[:id])
    @comments = ProductComment.where(product_id: params[:id])
  end
end


