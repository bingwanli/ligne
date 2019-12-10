Rails.application.routes.draw do
  root to: 'pages#index'

  devise_for :users

  require "sidekiq/web"
  authenticate :user, lambda { |u| u.admin } do
    mount Sidekiq::Web => '/sidekiq'
  end

  resources :brands do
    collection do
      get 'country'
    end
    resources :products, shallow: true do
      resources :product_recs, only: [:create, :update]
    end
    resources :brand_images, only: [:create, :destroy]
  end
end
