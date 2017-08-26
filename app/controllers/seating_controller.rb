class SeatingController < ApplicationController
  def index
    session[:category] = "seating"
    redirect_to products_path
  end
end
