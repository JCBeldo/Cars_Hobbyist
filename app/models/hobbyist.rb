class Hobbyist < ApplicationRecord
  has_many :cars

  def car_count
    self.cars.size
  end
end