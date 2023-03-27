# module Hobbyists
class Hobbyists::CarsController < ApplicationController
  def index
    @hobbyist = Hobbyist.find(params[:hobbyist_id])
    @cars = @hobbyist.cars
  end
end
# end