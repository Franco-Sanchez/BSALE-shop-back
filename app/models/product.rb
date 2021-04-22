class Product < ApplicationRecord
  belongs_to :category

  def self.render_products(query = nil)
    products = all
    if query
      filter_products = products.filter { |product| product.name.downcase.include?(query.downcase) }
      filter_products.map { |product| object_product(product) }
    else
      products.map { |product| object_product(product) }
    end
  end

  def self.object_product(product)
    { id: product.id, name: product.name, url_image: product.url_image,
      price: product.price, discount: product.discount, category: product.category.name }
  end
end
