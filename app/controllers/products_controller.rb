class ProductsController < ApplicationController
  before_action :set_product, only: [:show]

  # GET /products
  # GET /products.json
  def index
    @category = params[:category]
    if params[:search]
      @search = Search.new(min: params[:search][:min], max: params[:search][:max], category: @category, counter_height: params[:search][:counter_height], style: params[:search][:style], pieces: params[:search][:pieces], motion: params[:search][:motion])
      @products = Product.filter(@search)
    else
      @search = Search.new(min: 0, max: 5000, style: "all", counter_height: nil)
      if @category == "youth"
        @products = Product.where("category LIKE 'youth' OR category LIKE 'bunk_beds'")
      else
        @products = Product.where(category: @category)
      end
    end

    @page_number = 1
    @pages = (@products.length/12.0).ceil
    if params[:page_number]
      @page_number = params[:page_number].to_i
      if @page_number > @pages || @page_number < 1
        redirect_to "/#{@category}"
      end
    end
    min = (12 * (@page_number - 1))
    max = min + 11
    @products = @products[min..max]
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end
end
