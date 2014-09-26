require "rails_helper"
require "helper_methods"

describe "the update process" do
  it "allows a logged in user to update their information" do
    user = User.create({name: "Fargus", email: "fargus@gmail.com", password: "12345678", age: "32", password_confirmation: "12345678"})
    login(user)
    visit user_path(user)
    click_on "Update Profile"
    fill_in "user_age", with: "100"
    fill_in "user_current_password", with: "12345678"
    click_on "Update"
    expect(page).to have_content "successfully"
  end

  it "gives a logged in user an error messages if they fail to update with required information" do
    user = User.create({name: "Fargus", email: "fargus@gmail.com", password: "12345678", age: "32", password_confirmation: "12345678"})
    login(user)
    visit user_path(user)
    click_on "Update Profile"
    fill_in "user_age", with: "100"
    click_on "Update"
    expect(page).to have_content "blank"
  end
end
