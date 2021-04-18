def create_instance(obj, category = 'bebida energetica')
  Product.create( name: obj[:name], url_image: obj[:url_image], price: obj[:price],
                  discount: obj[:discount], category: Category.find_by(name: category))
end