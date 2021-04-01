module Admin
  class RecipesController < Admin::ApplicationController
    include Admin::Detachable
    before_action :set_tabs, only: [:edit, :new]

    def set_tabs
      @tab_names = ["recipe","ingredients","directions","categories"]
      @tab_content = {}
      @tab_content["recipe"] = ["name", "slug", "image", "servings", "cooking_time", "prep_time", "description"]
      @tab_content["ingredients"] = ["recipe_ingredients"]
      @tab_content["directions"] = ["directions"]
      @tab_content["categories"] = ["categories"]
    end

    def resource_params
      params.require(resource_class.model_name.param_key).
        permit(dashboard.permitted_attributes << :ingredient_id).
        transform_values { |v| read_param_value(v) }
    end

    def default_sort
      { order: :name, direction: :asc }
    end

  end
end
