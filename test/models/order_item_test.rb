# == Schema Information
#
# Table name: order_items
#
#  id          :integer          not null, primary key
#  product_id  :integer
#  order_id    :integer
#  unit_price  :decimal(12, 3)
#  quantity    :integer
#  total_price :decimal(12, 3)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class OrderItemTest < ActiveSupport::TestCase

	def setup
		@order_item = order_items(:one)
	end

	test "order item valid" do
		assert @order_item.valid?, "#{@order_item.inspect} should be valid"
	end

end
