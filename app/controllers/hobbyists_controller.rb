class HobbyistsController < ApplicationController
  def index
    @hobbyists = Hobbyist.all
  end

  def show
  end
end
