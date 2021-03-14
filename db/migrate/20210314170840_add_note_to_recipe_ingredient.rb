class AddNoteToRecipeIngredient < ActiveRecord::Migration[6.1]
  def change
    add_column :recipe_ingredients, :note, :string
  end
end
