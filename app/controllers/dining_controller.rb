class DiningController < ApplicationController
  def index
    session[:category] = "dining"
    redirect_to products_path
  end
end
