class StoresController < ApplicationController
  def index
    @store = Store.first
  end

  def show
    @stores = Store.all
  end
end
