class Brand < ApplicationRecord
  has_many :products
  has_many :mattresses

  def filter(params)
    @mattresses = self.mattresses.where("price < ?", params[:max]).where("price > ?", params[:min])
    if params[:size] != "all"
      @mattresses = @mattresses.where("sizes @> ARRAY[?]::varchar[]", params[:size])
    end
    if params[:components] != "all"
       @mattresses = @mattresses.where("components @> ARRAY[?]::varchar[]", params[:components])
    end
    @mattresses
  end
end
