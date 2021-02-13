Rails.application.routes.draw do

  namespace :admin do
    resources :recipes
    resources :ingredients
    resources :categories

    resource :recipes, :ingredients do
      member do
        get ":id/detach" => :detach
      end
    end

    resource :recipes, :ingredients do
      member do
        post "detach" => :detach
      end
    end

    root to: "recipes#index"
  end

  resources :ingredients
  resources :recipes
  resources :categories

  root to: "recipes#index"

end
