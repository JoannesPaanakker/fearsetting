Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :challenges do
    resources :benefits, only: [:new, :create, :show, :index]
    resources :fears, only: [:new, :create, :show, :destroy]
  end
  resources :fears, only: [:show] do
    resources :preventions, only: [:new, :create, :show, :destroy]
    resources :fixes, only: [:new, :create, :show, :destroy]  
  end

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :challenges, only: [ :index, :show, :update, :create ]
    end
  end
end
