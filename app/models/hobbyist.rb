class Hobbyist < ApplicationRecord
  has_many :cars

  def car_count
    self.cars.size
  end

  def self.newest_first
    order(created_at: :desc)
  end
end