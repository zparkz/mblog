Mblog::Application.routes.draw do
  
  resources :categories

  resources :posts do
  	resources :comments
  end
  
  authenticated :user do
    root :to => 'posts#index'
  end
  root :to => "posts#index"
  devise_for :users
  resources :users 

  match 'auth/facebook/callback' => 'sessions#create',:as => 'login'
  match 'auth/linkedin/callback' => 'sessions#create',:as => 'login'
  match 'logout' => 'sessions#destroy'

end