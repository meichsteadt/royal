class MattressesController < ApplicationController
  def index
    if params[:search]
      @search = Search.new(size: params[:search][:size], min: params[:search][:min], max: params[:search][:max], features: params[:search][:features])
      @mattresses = Mattress.filter({min: @search.min, max: @search.max, size: @search.size, components: @search.features})
    else
      @search = Search.new(size: "all", min: 0, max: 5000, features: "all")
      @mattresses = Mattress.all.sort_by { |matt| matt.price}
    end
  end

  def show

  end
end
