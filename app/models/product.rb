class Product < ApplicationRecord
  def sale
    true
  end

  def self.get_products
    products = RestClient.get("http://localhost:3000/products?client_id=test&client_secret=password")
    JSON.parse(products).each do |product|
      if product["image"] != "https://www.homelegance.com/wp-content/themes/h2/images/misc/shim.gif" && product["description"] != " "
        Product.create(name: product["name"], image: product["image"], description:product["description"], category: product["category"])
      end
    end
  end

  def get_next
    if self == Product.last
      Product.first.id
    else
      self.id + 1
    end
  end

  def get_prev
    if self == Product.first
      Product.last.id
    else
      self.id - 1
    end
  end

  def get_nexter
    if self == Product.last
      Product.first.id + 1
    elsif self == (Product.all[-2])
      Product.first.id
    else
      self.id + 2
    end
  end

  def get_nextest
    if self == Product.last
      Product.first.id + 2
    elsif self == (Product.all[-2])
      Product.first.id + 1
    elsif self == (Product.all[-3])
      Product.first.id
    else
      self.id + 3
    end
  end
end
