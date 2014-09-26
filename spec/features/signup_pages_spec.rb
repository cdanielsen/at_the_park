require 'rails_helper'

describe "the signup process" do
  it "Successfully signs up a user who enters the required information" do
    visit "/users/sign_up"
    fill_in 'Name', with: 'Fargus'
    fill_in 'Email', with: 'fargus@gmail.com'
    fill_in 'Password', with: '12345678'
    fill_in 'Password confirmation', with: '12345678'
    click_button 'Sign up'
    expect(page).to have_content 'Welcome!'
  end

  it "returns an error message when a user signs up with a password whose length is less than 8" do
    visit "/users/sign_up"
    fill_in 'Name', with: 'Smargus'
    fill_in 'Password', with: '123'
    fill_in 'Password confirmation', with: '123'
    click_button 'Sign up'
    expect(page).to have_content 'short'
  end
end
