class StoresController < ApplicationController
  def index
    @store = Store.first
  end

  def show

  end
end
