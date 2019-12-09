Rails.application.routes.draw do
  root to: 'pages#index'

  devise_for :users

  resources :brands do
    resources :products
  end
end
