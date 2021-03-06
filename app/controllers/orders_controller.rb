class OrdersController < ApplicationController

  def create
    Order.create(order_params)
    @product=Product.find(order_params[:product_id])
  end

 
  private
    def order_params
      params.require(:order).permit(:user_id,:product_id)
    end
end
