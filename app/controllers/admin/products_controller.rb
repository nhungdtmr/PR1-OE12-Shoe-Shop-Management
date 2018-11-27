class Admin::ProductsController < Admin::BaseController
  def index
    @product = select_products.created_at.page(params[:page])
      .per Settings.value.product_page
  end
end
