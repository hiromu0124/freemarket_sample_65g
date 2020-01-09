class Product < ApplicationRecord
  
  has_many :product_messages
  has_many :product_likes
  has_one :order
  has_many :product_comments
  has_many :product_images
  belongs_to :product_category
  belongs_to :product_brand
  belongs_to :user

  accepts_nested_attributes_for :product_images, allow_destroy: true
end