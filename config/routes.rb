Rails.application.routes.draw do
  resources :pokeman, only:[:index, :show] do
    collection do
      get "search"
    end
  end
  resources :types, only: [:index, :show]
  resources :stats, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
