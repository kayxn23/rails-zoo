class AddImageToAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column :animals, :image_url, :string
  end
end
