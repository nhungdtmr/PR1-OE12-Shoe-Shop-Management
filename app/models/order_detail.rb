class OrderDetail < ApplicationRecord
  belong_to :product
  belong_to :order
end
