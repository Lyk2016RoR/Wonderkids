Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'

  resources :books do 
  	   resources :votes, only: [:create, :update]
  end

  resources :categories
  resources :authors
  resources :publishers
end
