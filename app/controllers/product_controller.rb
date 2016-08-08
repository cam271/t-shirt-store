class ProductController < ApplicationController
	# index action to be routed to to display all of the thsirts
  def index
  	@product = Product.new
	end

end
