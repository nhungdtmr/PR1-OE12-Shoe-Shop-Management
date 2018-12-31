class Admin::ProductsController < Admin::BaseController
  layout "admin_layout"

  def index
    @product = Product.all
  end
end