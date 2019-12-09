Rails.application.routes.draw do
  get 'pages/index'
  devise_for :users
root to: 'brands#index'
  resources :brands do
    resources :products
  end
end
