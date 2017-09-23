class BrandsController < ApplicationController
  def index
    @brands = Brand.all
  end

  def show
    @brand = Brand.find(params[:id])
    if params[:search]
      if @brand.category == "mattresses"
        @search = Search.new(size: params[:search][:size], min: params[:search][:min], max: params[:search][:max], features: params[:search][:features])
        @mattresses = @brand.filter(@search)
      else
        @search = Search.new(category: params[:search][:category], min: params[:search][:min], max: params[:search][:max])
        @products = @brand.filter(@search)
      end
    else
      if @brand.category == "mattresses"
        @search = Search.new_mattress_search
        @mattresses = @brand.mattresses
      elsif @brand.category == "furniture"
        @search = Search.new_furniture_search
        @products = @brand.products
      end
    end
  end
end
