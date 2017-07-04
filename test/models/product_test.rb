# == Schema Information
#
# Table name: products
#
#  id         :integer          not null, primary key
#  category   :string
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  price      :float
#  active     :boolean
#

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
