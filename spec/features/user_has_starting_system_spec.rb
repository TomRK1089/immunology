require 'rails_helper'

feature 'as a new user I want to start a new system' do
  scenario 'follow options to create new game'
  # Acceptance Criteria
  # * If I'm signed in, i have an option to sign out
  # * When I opt to sign out, I get a confirmation that my identity has been
  #   forgotten on the machine I'm using

  scenario 'authenticated user signs out' do
    user = FactoryGirl.create(:user)
