class ProductsController < ApplicationController
  # GET /products
  def index
    render json: Product.render_products
  end

  # GET /products/:name
  def search
    render json: Product.search_products(params[:name])
  end
end
