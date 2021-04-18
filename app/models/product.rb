class Product < ApplicationRecord
  belongs_to :category

  def self.render_products
    products = all
    products.map do |product|
      { id: product.id, name: product.name, url_image: product.url_image,
        price: product.price, discount: product.discount, category: product.category.name }
    end
  end
end
