class Store < ApplicationRecord
  def show_hours
    self.hours.split(",")
  end
end
