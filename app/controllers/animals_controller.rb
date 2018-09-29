class AnimalsController < ApplicationController
  def index
    @animals = Animal.all.order(:id)
  end

  def show
    id = params[:id].to_i
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

  def destroy
    animal = Animal.find_by(id: params[:id].to_i)
    animal.destroy
    redirect_to root_path
  end

  def edit
    @animal = Animal.find_by(id: params[:id].to_i)
  end

  def update
    @animal = Animal.find_by(id: params[:id].to_i)
    @animal.update(animal_params)

    redirect_to animal_path
  end
private
  def animal_params
    return params.require(:animal).permit(:name, :species, :age, :image_url)
  end

end
