Mblog::Application.routes.draw do
  
  resources :categories

  resources :posts do
  	resources :comments
  end
  
  authenticated :user do
    root :to => 'users#index'
  end
  root :to => "users#index"
  devise_for :users
  resources :users 
end