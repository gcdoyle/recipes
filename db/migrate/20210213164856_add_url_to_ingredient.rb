class AddUrlToIngredient < ActiveRecord::Migration[6.0]
  def change
    add_column :ingredients, :url, :string
  end
end
