Rails.application.routes.draw do
  # resources :photos
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'places#index'
  resources :places do
    resources :comments, only: :create
    resources :photos
  end
  resources :users, only: :show

end
