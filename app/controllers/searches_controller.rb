class SearchesController < ApplicationController
  def create
    @search = Search.new(search_params)
    redirect_to paths(@search.category)
  end

private
  def search_params
    if params[:search][:counter_height] == "on"
      params[:search][:counter_height] = nil
    end
    if params[:search][:pieces] == "on"
      params[:search][:pieces] = nil
    end
    params.require(:search).permit(:min, :max, :size, :features, :category, :pieces, :style, :counter_height, :sectional, :sofa_love)
  end

  def paths(category)
    if params[:id]
      return brand_path(params[:id], search: search_params)
    elsif category == "mattresses"
      return mattresses_path(search: search_params)
    elsif category == "dining"
      return dining_path(search: search_params)
    elsif category == "seating"
      return seating_path(search: search_params)
    elsif category == "bedroom"
      return bedroom_path(search: search_params)
    end
  end
end
