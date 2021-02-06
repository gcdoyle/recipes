class Recipe < ApplicationRecord
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  has_many :recipe_categories
  has_many :categories, through: :recipe_categories

  # accepts_nested_attributes_for :ingredients
  accepts_nested_attributes_for :recipe_ingredients
    
end
