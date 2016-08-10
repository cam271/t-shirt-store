require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

	# tests the total number of reference links in the site
	test "sites layout links" do
		get root_path
		assert_template 'static_pages/home'
		assert_select 'a[href=?]', root_path, count:2
		assert_select 'a[href=?]', products_path(:category => "men"), count:2
		assert_select 'a[href=?]', products_path(:category => "women"), count:2
		assert_select 'a[href=?]', products_path(:category => "boys"), count:2
		assert_select 'a[href=?]', products_path(:category => "girls"), count:2
	end

end
