class LayoutsController < ApplicationController

  # GET /layouts
  # GET /layouts.json
  def index
    @slideshow = [Product.find(1), Product.find(176)]
  end
end
