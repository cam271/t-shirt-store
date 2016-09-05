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

  def total_price
    unit_price * quantity
  end

  # private methoda
  private
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
    self[:total_price] = quantity * self[:unit_price]
  end
  
end
