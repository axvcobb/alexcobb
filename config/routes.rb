Rails.application.routes.draw do

  resources :users, only: [:new, :create]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :posts, only: [:index, :new, :create, :update, :edit, :destroy] do
    resources :comments
  end

  resources :running, :controller => "races", :path => "running" do
    resources :results
  end

  post 'label', to: 'labels#create'

  root 'welcome#index'
end
