Rails.application.routes.draw do
  resources :recipes do
    collection do
      get 'homeSnapshot', to: 'recipes#homeSnapshot'
    end
  end
end
