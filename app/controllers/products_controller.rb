class ProductsController < ApplicationController
  before_action :set_product, only: [:show]
  helper_method :current_class
  # GET /products
  # GET /products.json
  def index
    @category_name = params[:category]
    @search = Search.new()
    if params[:category_id]
      @category = Category.find(params[:category_id])
      @products = @category.products.to_a.uniq
      @category_name = @category.name
      @categories = Category.where(parent_category: @category.parent_category)
    else
      @products = []
      @categories = Category.where(parent_category: @category_name)
      @categories.each {|e| @products << e.products}
      @products = @products.flatten.uniq
    end
    @page_number = 1
    @pages = (@products.length/12.0).ceil
    if params[:page_number]
      @page_number = params[:page_number].to_i
      if @page_number > @pages || @page_number < 1
        redirect_to "/#{@category_name}"
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

  def current_class(test_path)
    return 'active' if request.path == test_path
    ''
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
      if params[:category_id]
        @category = Category.find(params[:category_id])
      end
    end
end
