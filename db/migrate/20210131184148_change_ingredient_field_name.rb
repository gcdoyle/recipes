class ChangeIngredientFieldName < ActiveRecord::Migration[6.0]
  def change
    rename_column :ingredients, :title, :name
  end
end
