Mblog::Application.routes.draw do
  resources :categories


  resources :posts


  authenticated :user do
    root :to => 'users#index'
  end
  root :to => "users#index"
  devise_for :users
  resources :users 
end