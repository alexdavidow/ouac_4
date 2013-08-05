Ouac4::Application.routes.draw do

  
  root :to => "home#index"

  devise_for :users, :controllers => {:omniauth_callbacks => "users/omniauth_callbacks"}

  scope shallow_path: "user" do
    resources :users, only: [:show, :destroy] do
      resources :shopping_carts, only: [:show], shallow: true
    end
  end
  resources :cupcakes
  resources :cookies, :only => [:index, :new, :create, :destroy]
  resources :frostings, :only => [:index, :new, :create, :destroy]
  resources :toppings, :only => [:index, :new, :create, :destroy]
  resources :ice_creams, :only => [:index, :new, :create, :destroy]
  resources :shopping_cart, :only => [:show, :create, :new, :destroy]
  resources :product_orders, :only => [:new, :create, :destroy, :update]
  resources :products

  delete 'users/delete/.:id' => 'users#destroy', as: 'delete_user'
  get 'win' => 'cupcakes#win'
  get 'lose' => 'cupcakes#lose'
  get 'sessions/new' => 'sessions#new'
  get 'contact' => 'home#contact'
  post 'contact' => 'home#submit_contact'
  get 'about' => 'home#about'
  post 'sessions' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

end
