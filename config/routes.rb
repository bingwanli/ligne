Rails.application.routes.draw do
  root to: 'pages#index'

  devise_for :users

  resources :brands do
    collection do
      get 'country'
    end
    resources :products do
      resources :product_recs, only: [:create, :update]
    end
    resources :brand_images
  end
end
