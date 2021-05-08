class Recipe < ApplicationRecord
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  has_many :recipe_categories
  has_many :categories, through: :recipe_categories

  has_one_attached :image

  has_rich_text :description
  has_rich_text :directions

  accepts_nested_attributes_for(
    :recipe_ingredients,
    reject_if: :all_blank,
    allow_destroy: true
  )
  
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]
  friendly_id :slug_candidates, use: :slugged

  validates_presence_of :name, :slug

  def slug_candidates
    [
      :name,
      [:name, :id]
    ]
  end

  def should_generate_new_friendly_id?
    name_changed? || slug.blank?
  end
    
  def self.search(q)
	  if q
      ingredients = []
	    @recipes = Recipe.where("lower(recipes.name) LIKE ?", "%#{q}%".downcase).to_a.uniq{|r| r}
      Recipe.all.each do |recipe|
        recipe.ingredients.each do |i|
          @recipes << recipe if i.name.downcase.include?(q)
        end
      end
      @recipes.compact.uniq
		end
	end
end
