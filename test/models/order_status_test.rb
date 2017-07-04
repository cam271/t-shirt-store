# == Schema Information
#
# Table name: order_statuses
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class OrderStatusTest < ActiveSupport::TestCase

	def setup
		@order_status = order_statuses(:one)
	end

	test "valid" do
		assert @order_status.valid?
	end

end
