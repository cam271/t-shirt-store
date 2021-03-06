# == Schema Information
#
# Table name: order_items
#
#  id         :integer          not null, primary key
#  product_id :integer
#  order_id   :integer
#  unit_price :decimal(12, 3)
#  quantity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :order

  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validate :product_present
  validate :order_present

  before_save :finalize

  def unit_price
    if persisted?
      self[:unit_price]
    else
      product.price
    end
  end

  def subtotal
    unit_price * quantity
  end

  # making sure the foreign key which this belongs to is not nil
  def product_present
    if product.nil?
      errors.add(:product, "is not valid or is not active.")
    end
  end

  # making sure the foreign key which this belongs to is not nil
  def order_present
    if order.nil?
      errors.add(:order, "is not a valid order.")
    end
  end

  # sets the tables columns to their final unit and total price (tax)
  def finalize
    self[:unit_price] = unit_price
    order.subtotal = quantity * self[:unit_price]
  end
  
end
