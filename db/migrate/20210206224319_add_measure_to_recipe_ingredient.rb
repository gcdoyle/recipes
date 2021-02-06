class AddMeasureToRecipeIngredient < ActiveRecord::Migration[6.0]
  def change
    add_column :recipe_ingredients, :measure, :string
  end
end
