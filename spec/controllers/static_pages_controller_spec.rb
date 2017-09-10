require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do

  describe "Get static pages" do

    describe "GET #home" do
      it "returns http success" do
        visit :home
        expect(response.status).to eq(200)
      end
    end

    describe "GET #contact" do
      it "returns http success" do
        visit :contact
        expect(response.status).to eq(200)
      end
    end

    describe "GET #about" do
      it "returns http success" do
        visit :about
        expect(response.status).to eq(200)
      end
    end

  end

end
