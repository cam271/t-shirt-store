require 'rails_helper'

RSpec.describe OrderItemsController, type: :controller do

  describe "GET index" do
    
    before(:example) { get :index}
    
      xit "is a success" do
        expect(response). to have_http_status(:ok)
      end      

      xit "creates a new order" do
      end

      xit "should add 1 to order" do
        

    end
  
  end
