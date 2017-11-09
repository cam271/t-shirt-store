require 'rails_helper'

RSpec.describe User, type: :model do

  describe "attributes not null" do
 
    let(:user) { build(:user.name) }

    it "should have a user named Bob Jones" do    
      expect(:user).to eq("Bob Jones")
    end
  
  end

end
