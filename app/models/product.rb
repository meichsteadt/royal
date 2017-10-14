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
    elsif self == (Product.all.sort[-2])
      Product.first.id
    else
      self.id + 2
    end
  end

  def get_nextest
    if self == Product.last
      Product.first.id + 2
    elsif self == (Product.all.sort[-2])
      Product.first.id + 1
    elsif self == (Product.all.sort[-3])
      Product.first.id
    else
      self.id + 3
    end
  end
end
