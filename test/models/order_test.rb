# == Schema Information
#
# Table name: orders
#
#  id              :integer          not null, primary key
#  subtotal        :decimal(12, 3)
#  tax             :decimal(12, 3)
#  shipping        :decimal(12, 3)
#  total           :decimal(12, 3)
#  order_status_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class OrderTest < ActiveSupport::TestCase

	def setup
		@order = orders(:one)
	end

	test "valid order" do
		assert @order.valid?
	end

end
