class Mattress < ApplicationRecord
  def self.filter(params)
    @mattresses = Mattress.all.where("price < ?", params[:max]).where("price > ?", params[:min])
    if params[:size] != "all"
      @mattresses = @mattresses.where("sizes @> ARRAY[?]::varchar[]", params[:size])
    end
    if params[:components] != "all"
       @mattresses = @mattresses.where("components @> ARRAY[?]::varchar[]", params[:components])
    end
    @mattresses.sort_by { |matt| matt.price}
  end
end
