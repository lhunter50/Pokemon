Rails.application.routes.draw do
  resources :pokeman, only:[:index, :show] do
    collection do
      get "search"
    end
  end
  resources :types, only: [:index, :show]
  resources :stats, only: [:index, :show]
  resources :about, only: [:index, :show]

  root to: 'pokeman#home'
end
