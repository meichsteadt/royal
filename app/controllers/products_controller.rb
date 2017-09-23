class ProductsController < ApplicationController
  before_action :set_product, only: [:show]

  # GET /products
  # GET /products.json
  def index
    @category = params[:category]
    if params[:search]
      @search = Search.new(min: params[:search][:min], max: params[:search][:max], category: @category, counter_height: params[:search][:counter_height], style: params[:search][:style], pieces: params[:search][:pieces])
      @products = Product.filter(@search).sort_by { |product| product.price}
    else
      @search = Search.new(min: 0, max: 5000, style: "all", counter_height: nil)
      @products = Product.where(category: @category).sort_by { |product| product.price}
    end
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
