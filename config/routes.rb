Rails.application.routes.draw do
  
  get 'product/men'

  get 'product/women'

  get 'product/boys'

  get 'product/girls'

	root 										'static_pages#home'
	get 		'contact' 	=> 	'static_pages#contact'
 	get			'about' 		=>  'static_pages#about' 
	get 		'men'				=>	'product#men'
	get     'women'     =>  'product#women'
	get     'boys'      =>  'product#boys'
	get     'girls'     =>  'product#girls'

	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
