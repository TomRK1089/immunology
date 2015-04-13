require 'rails_helper'
require 'helper'

feature 'as a new user I want to dispense my metabolism points' do
  let(:user) { FactoryGirl.create(:user) }

  scenario 'follow options to create new game' do
    visit new_user_registration_path
    sign_in_as(user)
    click_link "new game"
    click_button "initialize immune system"
    6.times within ".cytokines" do
    click_button "+5"
    expect(page).to_have content("points distributed. any changes?")
    end
  end
end
