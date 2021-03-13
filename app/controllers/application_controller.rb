class ApplicationController < ActionController::Base
  def search
    if params[:q].blank?
      redirect_to(root_path)
    end
    @recipes = Recipe.search(params[:q])
  end
end
