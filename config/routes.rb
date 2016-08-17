Rails.application.routes.draw do

  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

	# this was created with the controller
  get 'carts/show'
	
	# home page
	root 										'static_pages#home'
	
	# tshirts display pages
	resources 							:products, only:[:index]
	
	# shopping cart
	resources							:carts, only:[:show] do
		put 'add/:tshirt_id', to: 'carts#add', as: :add_to
		put 'remove/:tshirt_id', to: 'carts#remove', as: :remove_from
	end
	
	# about and contact pages
	get 		'contact' 	=> 	'static_pages#contact'
 	get			'about' 		=>  'static_pages#about' 
	

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
