Rails.application.routes.draw do

	root 										'static_pages#home'
	resources 							:products, only:[:index]
	get 		'contact' 	=> 	'static_pages#contact'
 	get			'about' 		=>  'static_pages#about' 
	

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
