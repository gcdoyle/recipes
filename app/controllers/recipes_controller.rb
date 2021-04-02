class RecipesController < ApplicationController
  before_action :set_recipe, only: %i[ show ]
  include SetInstance

  # GET /recipes or /recipes.json
  def index
    @recipes = Recipe.where.not(category: :chris)
  end

  # GET /recipes/1 or /recipes/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = find_instance
    end

    # Only allow a list of trusted parameters through.
    # def recipe_params
    #   params.require(:recipe).permit(:title, :ingredient_id, recipe_ingredient_attributes: [:qty, :id, :recipe_id, :ingredient_id])
    # end
end
