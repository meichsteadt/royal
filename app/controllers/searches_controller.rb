class SearchesController < ApplicationController
  def create
    @search = Search.new(search_params)
    redirect_to paths(@search.category, @search.page_number)
  end

private
  def search_params
    if params[:search][:counter_height] == "on"
      params[:search][:counter_height] = nil
    end
    if params[:search][:pieces] == "on"
      params[:search][:pieces] = nil
    end
    if params[:search][:motion] == "on"
      params[:search][:motion] = nil
    end
    params.require(:search).permit(:min, :max, :size, :features, :category, :pieces, :style, :counter_height, :sectional, :sofa_love, :motion, :page_number, :search_input)
  end

  def paths(category, page_number = 1)
    if params[:id]
      return brand_path(params[:id], search: search_params, page_number: page_number)
    elsif category == "mattresses"
      return mattresses_path(search: search_params, page_number: page_number)
    elsif category == "dining"
      return dining_path(search: search_params, page_number: page_number)
    elsif category == "seating"
      return seating_path(search: search_params, page_number: page_number)
    elsif category == "bedroom"
      return bedroom_path(search: search_params, page_number: page_number)
    end
  end
end
