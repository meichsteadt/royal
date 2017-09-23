class Search < ApplicationRecord
  def self.new_mattress_search
    Search.new(size: "all", min: 0, max: 5000, features: "all")
  end

  def self.new_furniture_search
    Search.new(category: "all", min: 0, max: 5000)
  end
end
