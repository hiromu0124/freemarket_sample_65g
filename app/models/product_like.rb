class ProductLike < ApplicationRecord
  belongs_to :rank
  belongs_to :saler, class_name: 'User'
  belongs_to :buyer, class_name: 'User'
end
