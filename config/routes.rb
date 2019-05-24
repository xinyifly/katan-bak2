Rails.application.routes.draw do
  resources :votes, only: [:create, :new, :show]
  resources :candidates, only: [:index]
  root 'welcome#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
