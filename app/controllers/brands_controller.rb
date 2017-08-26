class BrandsController < ApplicationController
  def index
    @brands = Brand.all
  end

  def show
    @brand = Brand.find(params[:id])
    if params[:search]
      @search = Search.new(size: params[:search][:size], min: params[:search][:min], max: params[:search][:max], features: params[:search][:features])
      @mattresses = @brand.filter({min: @search.min, max: @search.max, size: @search.size, components: @search.features})
    else
      @search = Search.new(size: "all", min: 0, max: 5000, features: "all")
      @mattresses = @brand.mattresses
    end
  end
end
