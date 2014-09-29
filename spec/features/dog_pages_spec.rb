require "rails_helper"
require "helper_methods"

describe "the update process for dogs" do
  it "allows a logged-in user to update their dogs information" do
    user = User.create({name: "Fargus", email: "fargus@gmail.com", password: "12345678", age: "32", password_confirmation: "12345678"})
    Park.create({name: "Fernhill", location: "Somewhere"})
    login(user)
    visit user_path(user)
    click_on "Add new dog"
    fill_in "dog_name", with: "Walter"
    fill_in "dog_age", with: "5"
    fill_in "dog_breed", with: "Lab"
    click_on "Create Dog"
    click_on "Walter"
    click_on "Update info"
    fill_in "dog_age", with: "6"
    click_on "Update Dog"
    expect(page).to have_content "updated"
  end

  it "allows a logged-in user to delete a dog" do
    user = User.create({name: "Fargus", email: "fargus@gmail.com", password: "12345678", age: "32", password_confirmation: "12345678"})
    Park.create({name: "Fernhill", location: "Somewhere"})
    login(user)
    visit user_path(user)
    click_on "Add new dog"
    fill_in "dog_name", with: "Walter"
    fill_in "dog_age", with: "5"
    fill_in "dog_breed", with: "Lab"
    click_on "Create Dog"
    click_on "Walter"
    click_on "Delete dog"
    click_on "Ok"
    expect(page).to have_content "no more"
  end
end
