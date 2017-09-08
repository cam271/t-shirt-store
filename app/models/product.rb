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

class Product < ApplicationRecord

  has_many :order_items
  default_scope { where(active: true) }

  has_many :purchases
  has_many :users, through: :purchases

end
