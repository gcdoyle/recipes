class Ingredient < ApplicationRecord
  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients

  validates :name, presence: true
  validates :name, uniqueness: true

  accepts_nested_attributes_for :recipe_ingredients

end
