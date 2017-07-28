module ApplicationHelper
  
  # Added after installing shine for users
  #protect_from_forgery with: :exception
  #before_action :authenticate_user!

	# returns the page title or the default title if empty
	def pages_title(page_title)
		default_title = "T-Shirt-Co"
		if page_title.empty?
			default_title
		else
			page_title
		end
	end
end
