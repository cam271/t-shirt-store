require 'rails_helper'
require 'spec_helper'

describe "Logins" do
  it "allows user to login" do
    user = build(:user)
    visit('/users/sign_in')
    fill_in('Email' , with: user.email)
    fill_in('Password', with: user.password)
    click_button('Log in')
    expect(page).to have_content('Signed in successfully.') 
    visit('/')
  end
end
