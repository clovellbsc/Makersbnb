# frozen_string_literal: true

feature 'Checking the homepage' do
  scenario 'holds the welcome' do
    visit('/')
    expect(page).to have_content 'Welcome to MakersBnB'
  end

  scenario 'There are fields for signing up' do
    visit('/')

    expect(page).to have_content 'Sign Up'
    expect(page).to have_field 'username'
    expect(page).to have_field 'password'
    expect(page).to have_field 'name'
    expect(page).to have_field 'email'
    expect(page).to have_button 'Sign up'
  end

  scenario 'Signing up redirects to spaces page with personalised welcome message' do
    
    sign_up_bobby
    expect(page).to have_content 'Welcome, Bobby'
    expect(current_path).to eq '/'
  end
end
