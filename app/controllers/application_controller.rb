class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_store
  def set_store
    @store = Store.first
  end
end
