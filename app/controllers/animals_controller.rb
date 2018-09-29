class AnimalsController < ApplicationController
  def index
    @animals = Animal.all.order(:id)
  end

  def show
    id = params[:id]
    @animal = Animal.find_by(id: id)
  end

  def new
    @animal = Animal.new 
  end


end
