class Product < ApplicationRecord
  def sale
    false
  end

  def self.filter(params)
    @products = Product.where(category: params[:category]).where("price <= ?", params[:max]).where("price >= ?", params[:min])
    if !params[:counter_height].nil?
      @products = @products.where(counter_height: params[:counter_height])
    end
    if params[:style] && params[:style] != "all"
      @products = @products.where(style: params[:style])
    end
    if params[:pieces]
      if params[:pieces] > 1
        @products = @products.where("pieces > ?", 1)
      else
        @products = @products.where(pieces: 1)
      end
    end
    @products
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
    products = Product.where(category: self.category)

    if self == products.last
      products.first.id
    else
      i = products.index(self)
      products[i + 1].id
    end
  end

  def get_prev
    products = Product.where(category: self.category)
    if self == products.first
      products.last.id
    else
      i = products.index(self)
      products[i - 1].id
    end
  end

  def get_nexter
    products = Product.where(category: self.category)
    if self == products.last
      products[1].id
    elsif self == products[-2]
      products[0].id
    else
      i = products.index(self)
      products[i + 2].id
    end
  end

  def get_nextest
    products = Product.where(category: self.category)
    if self == products.last
      products[2].id
    elsif self == products[-2]
      products[1].id
    elsif self == products[-3]
      products[0].id
    else
      i = products.index(self)
      products[i + 3].id
    end
  end
end
