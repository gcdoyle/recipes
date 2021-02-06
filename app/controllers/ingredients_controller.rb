class IngredientsController < ApplicationController
  before_action :set_ingredient, only: %i[ show edit update destroy ]

  # GET /ingredients or /ingredients.json
  def index
    @ingredients = Ingredient.all
  end

  # GET /ingredients/1 or /ingredients/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredient
      @ingredient = Ingredient.find(params[:id])
    end

    Only allow a list of trusted parameters through.
    def ingredient_params
      params.require(:ingredient).permit(:title, :ingredient_id)
    end
end
