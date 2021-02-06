class AddFieldsToRecipe < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :cooking_time, :string
    add_column :recipes, :prep_time, :string
    add_column :recipes, :servings, :integer
    add_column :recipes, :directions, :text
  end
end
