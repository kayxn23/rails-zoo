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

  def create
    @animal = Animal.new(animal_params)

    if @animal.save
      redirect_to root_path
    else
      render :new
    end

  end

private
  def animal_params
    return params.require(:animal).permit(:name, :species, :age)
  end 

end
