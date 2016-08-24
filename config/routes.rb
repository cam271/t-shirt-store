Rails.application.routes.draw do

#	# these were created with controller generations
#   get 'order_items/create'
#
#   get 'order_items/update'
#
#   get 'order_items/destroy'
#
#   get 'carts/show'
	
	# home page
	root 'static_pages#home'
	
	# tshirts display products
	resources :products, only: [:index]
	
	# shopping cart display items in basket
	resource :cart, only: [:show]
	
	# modify items in for the basket
  resources :order_items, only: [:create, :update, :destroy]

	# about and contact pages
	get 		'contact' 	=> 	'static_pages#contact'
 	get			'about' 		=>  'static_pages#about' 
	

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
