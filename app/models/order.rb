class Order < ApplicationRecord
  belongs_to :order_status
  has_many :order_items
  before_create :set_order_status
  before_save :update_subtotal

  # gets called by before_create method to either set subtotal if there are items or 0 if their are not
  def subtotal
    order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
  end


  #private methods
  private

  #sets order status to equal in progress
  def set_order_status
    self.order_status_id = 1
  end
  
  #sets the tables subtotal column to current total
  def update_subtotal
    self[:subtotal] = subtotal
  end

end
