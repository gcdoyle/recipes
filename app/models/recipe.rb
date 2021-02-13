class Recipe < ApplicationRecord
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  has_many :recipe_categories
  has_many :categories, through: :recipe_categories

  has_one_attached :image

  accepts_nested_attributes_for :recipe_ingredients
    
end
