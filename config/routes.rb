Rails.application.routes.draw do

  root to: 'pages#index'
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }

  resources :ugcs, only: [:create, :destroy]

  resources :pages, only: [:index] do
    collection do
      get 'recs'
    end
    collection do
      get 'aboutus'
    end
  end

  require "sidekiq/web"
  authenticate :user, lambda { |u| u.admin } do
    mount Sidekiq::Web => '/sidekiq'
  end

  resources :brands do
    collection do
      get 'country'
    end
    resources :products, shallow: true
    resources :brand_images, only: [:create, :destroy, :update]
  end
end
