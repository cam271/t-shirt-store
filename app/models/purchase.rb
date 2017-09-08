# == Schema Information
#
# Table name: purchases
#
#  id          :integer          not null, primary key
#  products_id :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Purchase < ApplicationRecord
  belongs_to :user
  belongs_to :product
end
