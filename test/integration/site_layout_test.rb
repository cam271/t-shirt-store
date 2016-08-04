require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

	test "sites layout links" do
		get root_path
		assert_template 'static_pages/home'
		assert_select 'a[href=?]', root_path, count:1
		assert_select 'a[href=?]', men_path, count:1
		assert_select 'a[href=?]', women_path, count:1
		assert_select 'a[href=?]', boys_path, count:1
		assert_select 'a[href=?]', girls_path, count:1
	end

end
