class BedroomsController < ApplicationController
  def index
    session[:category] = "bedroom"
    redirect_to products_path
  end
end
