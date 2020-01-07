# class ProductCommentsController < ApplicationController
#   def new
#     @product_comment=ProductComment.new
#   end
#   def create
#     ProductComment.create(comment_params)
    
#   end
#   private
#   def comment_params
#     params.require(:product_comment).permit(:comment).merge(user_id: current_user.id, product_id: @product.id)
#   end
# end
