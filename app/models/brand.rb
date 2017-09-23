class Brand < ApplicationRecord
  has_many :products
  has_many :mattresses

  def filter(params)
    if self.category == "mattresses"
      return self.filter_mattresses({min: params[:min], max: params[:max], size: params[:size], components: params[:features]})
    else
      return self.filter_furniture({min: params[:min], max: params[:max], category: params[:category]})
    end
  end

  def filter_mattresses(params)
    @mattresses = self.mattresses.where("price < ?", params[:max]).where("price > ?", params[:min])
    if params[:size] != "all"
      @mattresses = @mattresses.where("sizes @> ARRAY[?]::varchar[]", params[:size])
    end
    if params[:components] != "all"
       @mattresses = @mattresses.where("components @> ARRAY[?]::varchar[]", params[:components])
    end
    @mattresses
  end

  def filter_furniture(params)
    @products = self.products.where("price < ?", params[:max]).where("price > ?", params[:min]).where(category: params[:category])
  end
end
