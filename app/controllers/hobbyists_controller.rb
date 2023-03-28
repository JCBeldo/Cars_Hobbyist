class HobbyistsController < ApplicationController
  def index
    @hobbyists = Hobbyist.all.newest_first
  end

  def show
    @hobbyist = Hobbyist.find(params[:id])
  end
end
