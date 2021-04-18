class Product < ApplicationRecord
  belongs_to :category

  def self.render_products
    products = all
    products.map { |product| object_product(product) }
  end

  def self.search_products(query)
    products = all
    products.filter do |product|
      object_product(product) if product.name.downcase.include?(query.downcase)
    end
  end

  def self.object_product(product)
    { id: product.id, name: product.name, url_image: product.url_image,
      price: product.price, discount: product.discount, category: product.category.name }
  end
end
