Rails.application.routes.draw do

  resources :users, only: [:new, :create]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :posts, only: [:index, :new, :create, :update, :edit, :destroy] do
    resources :comments
  end

  post 'label', to: 'labels#create'

  root 'welcome#index'
end
