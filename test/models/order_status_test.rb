require 'test_helper'

class OrderStatusTest < ActiveSupport::TestCase

	def setup
		@order_status = order_statuses(:one)
	end

	test "valid" do
		assert @order_status.valid?
	end

end
