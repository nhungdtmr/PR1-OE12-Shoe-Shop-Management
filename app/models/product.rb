class Product < ApplicationRecord
  belongs_to :category
  belongs_to :manufacturer
  has_many :image
  has_many :comment
  has_many :order_detail
end

