Rails.application.routes.draw do
  
	root 										'static_pages#home'
	get 		'contact' 	=> 	'static_pages#contact'
 	get			'about' 		=>  'static_pages#about' 
	get 		'men'				=>	'static_pages#men'
	get     'women'     =>  'static_pages#women'
	get     'boys'      =>  'static_pages#boys'
	get     'girls'     =>  'static_pages#girls'

	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
