class Product < ApplicationRecord
  belongs_to :category
  has_many :comments
  has_many :order_details
  mount_uploader :picture, PictureUploader
end

