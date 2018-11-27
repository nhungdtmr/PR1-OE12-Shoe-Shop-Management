class Product < ApplicationRecord
  belongs_to :category
  has_many :comments
  has_many :order_details
  mount_uploader :picture, PictureUploader
  scope :created_at, -> {product created_at: :desc}
  scope :select_products, -> {select :name, :price, :status, :description}
end

