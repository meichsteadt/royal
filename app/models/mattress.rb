class Mattress < ApplicationRecord
  def self.filter(params)
    @mattresses = Mattress.all
    # .where("price < ?", params[:max]).where("price > ?", params[:min])
    if params[:size] != "all"
      @mattresses = @mattresses.where("sizes @> ARRAY[?]::varchar[]", params[:size])
    end
    if params[:components] != "all"
       @mattresses = @mattresses.where("components @> ARRAY[?]::varchar[]", params[:components])
    end
    @mattresses.sort_by { |matt| matt.price}
  end

  def sale
    false
  end

  def firmness_image
    if self.firmness == "firm"
      return "firm.png"
    elsif self.firmness == "medium"
      return "medium.png"
    else
      return "plush.png"
    end
  end

  def components_image
    if self.components.include?("pocketed_coil")
      return "pocketed-coil-icon.png"
    elsif self.components.include?("innerspring")
      return "innerspring-icon.png"
    elsif self.components.include?("memory_foam")
      return "memory-foam-icon.png"
    end
  end

  def show_components
    comps = []
    self.components.each do |comp|
      comps.push(comp.gsub("_", " "))
    end
    comps
  end

  def show_prices
    # eval(self.price_sizes)
    []
  end
end
