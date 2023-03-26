class HobbyistsController < ApplicationController
  def index
    @hobbyists = Hobbyist.all
    # require 'pry'; binding.pry
  end
end
