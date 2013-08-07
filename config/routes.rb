Ouac4::Application.routes.draw do

  
  root :to => "home#index"

  devise_for :users, :controllers => {:omniauth_callbacks => "users/omniauth_callbacks"}

  # scope shallow_path: "user" do
    resources :users, only: [:show, :destroy, :update, :create] do
      resources :shopping_carts, only: [:show], shallow: true
    end
  # end
  resources :cupcakes
  resources :cookies, :only => [:index, :new, :create, :destroy]
  resources :frostings, :only => [:index, :new, :create, :destroy]
  resources :toppings, :only => [:index, :new, :create, :destroy]
  resources :ice_creams, :only => [:index, :new, :create, :destroy]
  resources :shopping_cart, :only => [:show, :create, :new, :destroy]
  resources :product_orders, :only => [:new, :create, :destroy, :update] do
    collection do
      post 'stripe_payment' => 'product_orders#stripe_payment'
      patch 'shipping' => 'product_orders#shipping', as: 'shipping'
    end
  end
  resources :products
  get 'custom_creator' => 'products#custom_creator'
  post 'custom_creator' => 'products#new_custom_creator', :as => 'create_custom_cupcake'

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
