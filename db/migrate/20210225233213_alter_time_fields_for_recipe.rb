class AlterTimeFieldsForRecipe < ActiveRecord::Migration[6.0]
  def change
    remove_column :recipes, :cooking_time
    remove_column :recipes, :prep_time

    add_column :recipes, :cooking_time, :integer
    add_column :recipes, :prep_time, :integer
  end
end
