Rails.application.routes.draw do

  devise_for :users
  
  # home page
  root 'static_pages#home'
	
  # tshirts display products
  resources :products, only: [:index]
	
  # shopping cart display items in basket
  resource :cart, only: [:show]
  
  # remove all of current_order's items
  resource :order, only: [:destroy]
	
  # modify items in for the basket
  resources :order_items, only: [:create, :update, :destroy, :empty_cart]

  # about and contact pages
  get 	'contact' 	=> 	'static_pages#contact'
  get		'about' 	  =>  'static_pages#about'

  # checkout/transaction with Braintree
  resources :transactions, only: [:new, :create]

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
