Rails.application.routes.draw do
  resources :categories
  resources :articles, only: [:index, :show,:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
end
