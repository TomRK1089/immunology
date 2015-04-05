require 'rails_helper'

feature 'as a new user I want to start a new system' do
  let(:user) { FactoryGirl.create(:user) }

  scenario 'follow options to create new game' do
    sign_in_as(user)
    click_link "new game"
    click_button "intialize immune system"
    expect(page).to have_content("greetings #{user.username}")
    expect(page).to have_content("your immune system is currently uncompromised")
end


  scenario 'only users can play' do
    visit 'homes#index'
    expect(page).to have_content(
      'You need to sign in or sign up before continuing.'
    )
  end
end
