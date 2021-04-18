class ProductsController < ApplicationController
  def index
    render json: Product.render_products
  end
end
