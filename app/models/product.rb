class Product < ApplicationRecord
  has_many :product_categories
  has_many :categories, through: :product_categories
  def sale
    false
  end

  def self.filter(params)
    @products = Product.where(category: params[:category])
    # .where("price <= ?", params[:max]).where("price >= ?", params[:min])
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
    if !params[:motion].nil?
      if params[:motion]
        @products = @products.where(motion: true)
      else
        @products = @products.where(motion: false)
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

  def get_recommended_items
    
  end



  def self.read
    file = File.read('product_output.json')
    json = JSON.parse(file)
    json.each do |key, value|
      product = value['product']
      Product.create(name: product['name'], category: product['category'], images: product['thumbnail'], image: product['thumbnail'], description: product['description'])
    end
    return ""
  end
end
