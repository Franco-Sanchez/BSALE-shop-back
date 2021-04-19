class ProductsController < ApplicationController
  # GET /products
  def index
    name = params[:name]
    if name
      render json: Product.search_products(name)
    else
      render json: Product.render_products
    end
  end
end
