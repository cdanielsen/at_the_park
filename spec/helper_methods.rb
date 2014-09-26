def login(user)
  visit "/users/sign_in"
  fill_in "Email", with: user.email
  fill_in "Password", with: user.password
  click_on "Log in"
end
