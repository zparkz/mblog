Mblog::Application.routes.draw do
  
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }

  resources :categories

  resources :posts do
  	resources :comments
  end
  
  authenticated :user do
    root :to => 'posts#index'
  end
  root :to => "home#index"
  #devise_for :users
  resources :users 

  #match 'auth/facebook/callback' => 'sessions#create',:as => 'login'
  #match 'auth/linkedin/callback' => 'sessions#create',:as => 'login'
  #match 'logout' => 'sessions#destroy'

end