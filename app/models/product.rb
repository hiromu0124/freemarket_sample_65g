class Product < ApplicationRecord
  
  has_many :product_messages, dependent: :destroy
  has_many :product_likes, dependent: :destroy
  has_one :order, dependent: :destroy
  has_many :product_comments, dependent: :destroy
  has_many :product_images, dependent: :destroy
  belongs_to :product_category
  belongs_to :product_brand
  belongs_to :user

  accepts_nested_attributes_for :product_images, allow_destroy: true
end