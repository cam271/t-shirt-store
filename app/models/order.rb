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


class Order < ApplicationRecord
  belongs_to :order_status
  has_many :order_items, :dependent => :delete_all
  before_save :set_order_status
  
  # TODO remove subtotal column

  #before_save :update_subtotal

  #might havve to add this back in
  #gets called by before_save method to either set subtotal if there are items or 0 if their are not
  #def subtotal
   # sum = order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
  #end


  private

    #sets order status to equal in progress
    def set_order_status
      self.order_status_id = 1
    end
    
    #sets the tables subtotal column to current total
    #def update_subtotal
     # self[:subtotal] = subtotal
    #end

end
