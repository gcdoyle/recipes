class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.datetime :cooking_time
      t.datetime :prep_time
      t.integer :servings
      t.text :directions

      t.timestamps
    end
  end
end
