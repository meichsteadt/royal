class LayoutsController < ApplicationController

  # GET /layouts
  # GET /layouts.json
  def index
    @slideshow = [Product.find(5), Product.find(8)]
  end
end
