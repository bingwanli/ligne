Rails.application.routes.draw do
  get 'brand_images/index'
  get 'brand_images/show'
  root to: 'pages#index'

  devise_for :users

  resources :brands do
    collection do
      get 'country'
    end
    resources :products
    resources :brand_images
  end
end
