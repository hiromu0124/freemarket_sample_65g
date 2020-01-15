class OrdersController < ApplicationController

  def create
   Order.create(order_params)
   redirect_to root_path
  end

 
  private
    def order_params
      params.require(:order).permit(:user_id,:product_id)
    end
end
