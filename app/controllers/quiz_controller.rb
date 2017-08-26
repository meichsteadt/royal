class QuizController < ApplicationController
  def index
    @brands = Brand.where(category: "mattresses")
  end

  def show

  end

  def create

  end
end
