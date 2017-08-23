class LayoutsController < ApplicationController

  # GET /layouts
  # GET /layouts.json
  def index
    @store = Store.new(name: "store", id: 1)
    @slideshow = ["https://www.homelegance.com/wp-content/uploads/2017/03/2042-1-750x500.jpg"]
  end
end
