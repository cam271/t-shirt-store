require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

	# tests the total number of reference links in the site
	test "sites layout links" do
		get root_path
		assert_template 'static_pages/home'
		assert_select 'a[href=?]', root_path, count:2
		assert_select 'a[href=?]', men_path, count:2
		assert_select 'a[href=?]', women_path, count:2
		assert_select 'a[href=?]', boys_path, count:2
		assert_select 'a[href=?]', girls_path, count:2
	end

end
