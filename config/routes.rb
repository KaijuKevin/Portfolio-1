Rails.application.routes.draw do
  devise_for :users
  root to: 'categories#index'

  resources :categories do
    resources :projects, except: [:index]
  end

  resources :posts do
    resources :comments
  end

  resources :recommendations
end
