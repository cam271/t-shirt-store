require 'test_helper'

class OrderItemTest < ActiveSupport::TestCase

	def setup
		@order_item = order_items(:one)
	end

	test "order item valid" do
		assert @order_item.valid?, "#{@order_item.inspect} should be valid"
	end

end
