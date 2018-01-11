class Search < ApplicationRecord
  def self.new_mattress_search
    Search.new(size: "all", min: 0, max: 5000, features: "all")
  end

  def self.new_furniture_search
    Search.new(category: "all", min: 0, max: 5000)
  end

  def self.search(input)
    @products = []
    @products << Product.where("name LIKE ?", "%#{input}%")
    Product.where("description LIKE ?", "%#{input}%").each do |prod|
      unless @products.include?(prod)
        @products << prod
      end
    end
    Product.where("category LIKE ?", "%#{input}%").each do |prod|
      unless @products.include?(prod)
        @products << prod
      end
    end
    @products
  end
end
