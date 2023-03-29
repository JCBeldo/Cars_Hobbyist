class HobbyistsController < ApplicationController
  def index
    @hobbyists = Hobbyist.all.newest_first
  end

  def show
    @hobbyist = Hobbyist.find(params[:id])
  end

  def new
  end

  def create
    hobbyist = Hobbyist.create(hobbyist_params)
    redirect_to '/hobbyists'
  end

  def edit
    @hobbyist = Hobbyist.find(params[:id])
    # redirect_to "/hobbyists"
  end

  def update
    hobbyist = Hobbyist.find(params[:id])
    hobbyist.update(hobbyist_params)
    redirect_to '/hobbyists'
  end

  private
  def hobbyist_params
    params.permit(:name, :garage_capacity, :insurance)
    # params.permit(:garage_capacity)
  end
end

