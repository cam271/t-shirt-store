require 'test_helper'

class ProductTest < ActiveSupport::TestCase

	def setup
		@products = products(:mens_shirt)
	end

	test "valid product" do
		assert @products.valid?
	end

	test "active" do
		assert @products.active?
	end
end
