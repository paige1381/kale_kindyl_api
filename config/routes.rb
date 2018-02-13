Rails.application.routes.draw do
  resources :recipes do
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
