Rails.application.routes.draw do

  namespace :admin do
    resources :recipes
    resources :ingredients
    resources :categories

    root to: "recipes#index"
  end

  resources :ingredients
  resources :recipes
  resources :categories

end
