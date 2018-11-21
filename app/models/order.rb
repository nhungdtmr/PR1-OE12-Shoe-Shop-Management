class Order < ApplicationRecord
  belongs_to :user
  has_many :order_detail
  has_many :payment
end
