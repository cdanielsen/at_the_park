require 'rails_helper'
require 'helper_methods'

describe "the check-in process" do
  it "allows a user to check-in to a park at the given time" do
    user = User.create({name: "Fargus", email: "fargus@gmail.com", password: "12345678", age: "32", password_confirmation: "12345678"})
    Park.create({name: "Fernhill", location: "Somewhere"})
    login(user)
    visit user_path(user)
    page.select "Fernhill", from: 'visit_park_id'
    click_button 'Check-in!'
    expect(page).to have_content "checked"
  end

  it "allows a logged-in user to add a new dog to their profile" do
    user = User.create({name: "Fargus", email: "fargus@gmail.com", password: "12345678", age: "32", password_confirmation: "12345678"})
    Park.create({name: "Fernhill", location: "Somewhere"})
    login(user)
    visit user_path(user)
    click_on "Add new dog"
    fill_in "dog_name", with: "Walter"
    fill_in "dog_age", with: "5"
    fill_in "dog_breed", with: "Lab"
    click_on "Create Dog"
    expect(page).to have_content "added!"
  end
end
