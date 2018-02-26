Rails.application.routes.draw do
  root 'welcome#index'
  resources :ingredients, only: [:index, :show, :update, :destroy]
  resources :ingredient_categories, only: [:index, :show, :update, :destroy] do
    resources :ingredients, only: [:create]
  end
  resources :directions, only: [:index, :show, :update, :destroy]
  resources :directions_categories, only: [:index, :show, :update, :destroy] do
    resources :directions, only: [:create]
  end
  resources :tags, only: [:index, :show, :update, :destroy]
  resources :recipes do
    resources :tags, only: [:create]
    resources :ingredient_categories, only: [:create]
    resources :directions_categories, only: [:create]
    collection do
      get 'homeSnapshot', to: 'recipes#homeSnapshot'
      get 'entreeSnapshot', to: 'recipes#entreeSnapshot'
      get 'breakfastSnapshot', to: 'recipes#breakfastSnapshot'
      get 'dessertSnapshot', to: 'recipes#dessertSnapshot'
      get 'sideSnapshot', to: 'recipes#sideSnapshot'
      get 'drinkSnapshot', to: 'recipes#drinkSnapshot'
      get 'entree', to: 'recipes#entree'
      get 'breakfast', to: 'recipes#breakfast'
      get 'dessert', to: 'recipes#dessert'
      get 'side', to: 'recipes#side'
      get 'drink', to: 'recipes#drink'

    end
  end
end
