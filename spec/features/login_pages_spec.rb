require 'rails_helper'

describe "the login process" do
  it "logs a user in with successful credentials" do
    User.create({name: "Fargus", email: "fargus@gmail.com", password: "12345678", password_confirmation: "12345678"})
    visit "/users/sign_in"
    fill_in "Email", with: 'fargus@gmail.com'
    fill_in "Password", with: "12345678"
    click_on "Log in"
    expect(page).to have_content "successfully"
  end

  it "displays the login page with an error message if given incorrect credentials" do
    User.create({name: "Fargus", email: "fargus@gmail.com", password: "12345678", password_confirmation: "12345678"})
    visit "/users/sign_in"
    fill_in "Email", with: 'fargus@gmail.com'
    fill_in "Password", with: "wrong"
    click_on "Log in"
    expect(page).to have_content "Invalid"
  end
end
