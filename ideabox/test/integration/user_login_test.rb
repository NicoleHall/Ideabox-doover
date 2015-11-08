require 'test_helper'

class UserLoginTest < ActionDispatch::IntegrationTest
  test 'registered user can login in' do
    user = User.create(username: "MarloMajor", password: "password")

    visit login_path
    fill_in "Username", with: user.username
    fill_in "Password", with: "password"
    click_button "Login"

    assert page.has_content?("Hello MarloMajor")

  end

  # test for if user does not exist
  # and test for if user name and / or pw is wrong
end
