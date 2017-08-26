class SearchesController < ApplicationController
  def create
    @search = Search.new(search_params)
    redirect_to brand_path(params[:id], search: search_params)
  end

private
  def search_params
    params.require(:search).permit(:min, :max, :size, :features)
  end
end
