require 'rails_helper'

RSpec.feature 'Tests Log in Page', type: :feature do
  background { visit new_user_session_path }
  scenario 'if there is form login' do
    expect(page.has_field?('Email')).to be true
    expect(page.has_field?('Password')).to be true
    expect(page.has_button?('Log In')).to be true
  end

  context 'Form Submission' do
    scenario 'if can login without credentials' do
      click_button 'Log In'
      expect(page).to have_content 'Invalid Email or password.'
    end

    scenario 'if credentials are wrong' do
      within 'form' do
        fill_in 'Email', with: 'gmail.com'
        fill_in 'Password', with: 'secret'
      end
      click_button 'Log In'
      expect(page).to have_content 'Invalid Email or password.'
    end

    scenario 'if credentials are right' do
      @user1 = User.create(Name: 'Alick Nyirenda', email: 'test@test.com',
                           password: '123Alick', confirmed_at: DateTime.now)
      within 'form' do
        fill_in 'Email', with: @user1.email
        fill_in 'Password', with: @user1.password
      end
      click_button 'Log In'
      expect(page).to have_content 'Signed in successfully'
    end
  end
end
