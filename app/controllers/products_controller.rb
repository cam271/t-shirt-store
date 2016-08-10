class ProductsController < ApplicationController
	
	def index
  	@products = Product.where(category: params[:category])
  end

end
