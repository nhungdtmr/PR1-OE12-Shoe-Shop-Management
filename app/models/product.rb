class Product < ApplicationRecord
  belongs_to :category
  belongs_to :manufacturer
  has_many :images
  has_many :comments
  has_many :order_details
end

