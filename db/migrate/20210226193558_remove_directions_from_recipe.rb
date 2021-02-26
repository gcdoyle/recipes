class RemoveDirectionsFromRecipe < ActiveRecord::Migration[6.0]
  def change
    remove_column :recipes, :directions
  end
end
