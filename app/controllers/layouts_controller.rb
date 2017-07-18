class LayoutsController < ApplicationController

  # GET /layouts
  # GET /layouts.json
  def index
    @store = Store.first
    @slideshow = [Product.find(216).image, Product.find(6).image, Product.find(10).image]
  end
end
