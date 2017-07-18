class StoresController < ApplicationController
  def index
    @store = Store.first
  end

  def show
    @store = Store.find(params[:id])
  end
end
