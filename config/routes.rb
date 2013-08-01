Ouac4::Application.routes.draw do

  
  root :to => "home#index"

  devise_for :users, :controllers => {:omniauth_callbacks => "users/omniauth_callbacks"}
  resources :users, only: [:show]

  resources :cupcakes
  resources :cookies, :only => [:index, :new, :create, :destroy]
  resources :frostings, :only => [:index, :new, :create, :destroy]
  resources :toppings, :only => [:index, :new, :create, :destroy]
  resources :ice_creams, :only => [:index, :new, :create, :destroy]
  get 'win' => 'cupcakes#win'
  get 'lose' => 'cupcakes#lose'
  get 'sessions/new' => 'sessions#new'
  get 'menu' => 'home#menu'
  get 'contact' => 'home#contact'
  # make post 'contact' destination (email address?)
  get 'about' => 'home#about'
  post 'sessions' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

end
