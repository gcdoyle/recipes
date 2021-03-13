class ChangeTypeOfNumberForDecimals < ActiveRecord::Migration[6.1]
  def change
    change_column :recipe_ingredients, :qty, :decimal, :precision => 6, :scale => 2
  end
end
