require 'rails_helper'
require 'helper'

feature 'as a new user I want to start a new system' do
  let(:user) { FactoryGirl.create(:user) }

  scenario 'follow options to create new game' do
    visit new_user_registration_path
    sign_in_as(user)
    click_link "new game"
    click_button "initialize immune system"
    expect(page).to have_content("innate stage initiated. viruses are attacking!")
  end
  scenario 'only users can play' do
    visit root_path
    expect(page).to have_content(
      'You need to sign in or sign up before continuing.'
    )
  end
end
