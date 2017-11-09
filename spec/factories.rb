FactoryBot.define do
    
  factory :user do
    name "Chris Messenger"
    email "messenger_c@ymail.com"
    password "aaaaaa"
  end

  #factory :order do
  #  first_name "Bob"
  #  last_name "Jones"
  #end 

  #factory :order_item do
  #  order_id 1
  #  product_id 1
  #  unit_price 10.00
  #  quantity 4
  #end

  #factory :order_status do
  #  OrderStatus.delete_all
  #  OrderStatus.create! id: 1, name: "In Progress"
  #  OrderStatus.create! id: 2, name: "Placed"
  #  OrderStatus.create! id: 3, name: "Shipped"
  #  OrderStatus.create! id: 4, name: "Cancelled"
  #end 

  #factory :order_status do
  #  first_name "Bob"
  #  last_name "Jones"
  #end 
  
end
